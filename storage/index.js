const { createClient } = require('@supabase/supabase-js');
const dotenv = require('dotenv');
const fs = require('fs').promises;
const path = require('path');
const buckets = require('./config/buckets.js');

dotenv.config();

const supabase = createClient(process.env.SUPABASE_API_URL, process.env.SUPABASE_ANON_KEY);

async function createBuckets(buckets) {
    try {
        await Promise.all(buckets.map(async ({ name, options }) => {
            const { data, error } = await supabase.storage.createBucket(name, options);
            if (error) {
                throw new Error(`Failed to create bucket ${name}: ${error.message}`);
            }
        }));

        console.log('Buckets created successfully 🚀');

        await uploadFilesInFolders('images');
    } catch (error) {
        console.error(error);
    }
}

async function uploadFilesInFolders(baseFolder) {
    try {
        const basePath = path.join(__dirname, baseFolder);
        const folders = await fs.readdir(basePath);
        await Promise.all(folders.map(folder => {
            const folderPath = path.join(basePath, folder);
            return uploadFiles(folderPath, folder);
        }));

        console.log('Files uploaded successfully 🎉');
    } catch (error) {
        console.error('Error reading directory:', error);
    }
}

async function uploadFiles(folderPath, folderName) {
    try {
        const files = await fs.readdir(folderPath);
        await Promise.all(files.map(async (file) => {
            const filePath = path.join(folderPath, file);
            const buffer = await fs.readFile(filePath);

            const {data, error} = await supabase.storage.from(folderName).upload(file, buffer, {
                contentType: 'image/*'
            });

            if (error) {
                throw new Error(`Failed to upload file ${file}: ${error.message}`);
            }
        }));
    } catch (error) {
        console.error('Error uploading files:', error);
    }
}

createBuckets(buckets);

const buckets = [
    {
        name: 'teste1',
        options: {
            public: true,
            allowedMimeTypes: ['image/*'],
            fileSizeLimit: '50MB',
        }
    },
    {
        name: 'teste2',
        options: {
            public: true,
            allowedMimeTypes: ['image/*'],
            fileSizeLimit: '50MB',
        }
    },
    // {
    //     name: 'looks_image',
    //     options: {
    //         public: true,
    //         allowedMimeTypes: ['image/*'],
    //         fileSizeLimit: '50MB',
    //     }
    // },
    // {
    //     name: 'users_profile_picture',
    //     options: {
    //         public: true,
    //         allowedMimeTypes: ['image/jpg, image/png'],
    //         fileSizeLimit: '50MB',
    //     }
    // },
    // {
    //     name: 'onboarding',
    //     options: {
    //         public: true,
    //         allowedMimeTypes: ['image/*'],
    //         fileSizeLimit: '50MB',
    //     }
    // },
]

module.exports = buckets;
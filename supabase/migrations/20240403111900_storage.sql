create policy "Give anon users access to JPG images in folder fbjfxe_0"
on "storage"."objects"
as permissive
for select
to public
using (((bucket_id = 'users_profile_pictures'::text) AND (storage.extension(name) = 'jpg'::text) AND (lower((storage.foldername(name))[1]) = 'public'::text) AND (auth.role() = 'anon'::text)));


create policy "Give anon users access to JPG images in folder fbjfxe_1"
on "storage"."objects"
as permissive
for insert
to public
with check (((bucket_id = 'users_profile_pictures'::text) AND (storage.extension(name) = 'jpg'::text) AND (lower((storage.foldername(name))[1]) = 'public'::text) AND (auth.role() = 'anon'::text)));


create policy "Give anon users access to JPG images in folder fbjfxe_2"
on "storage"."objects"
as permissive
for update
to public
using (((bucket_id = 'users_profile_pictures'::text) AND (storage.extension(name) = 'jpg'::text) AND (lower((storage.foldername(name))[1]) = 'public'::text) AND (auth.role() = 'anon'::text)));


create policy "Give anon users access to PNG images in folder fbjfxe_0"
on "storage"."objects"
as permissive
for select
to public
using (((bucket_id = 'users_profile_pictures'::text) AND (storage.extension(name) = 'png'::text) AND (lower((storage.foldername(name))[1]) = 'public'::text) AND (auth.role() = 'anon'::text)));


create policy "Give anon users access to PNG images in folder fbjfxe_1"
on "storage"."objects"
as permissive
for insert
to public
with check (((bucket_id = 'users_profile_pictures'::text) AND (storage.extension(name) = 'png'::text) AND (lower((storage.foldername(name))[1]) = 'public'::text) AND (auth.role() = 'anon'::text)));


create policy "Give anon users access to PNG images in folder fbjfxe_2"
on "storage"."objects"
as permissive
for update
to public
using (((bucket_id = 'users_profile_pictures'::text) AND (storage.extension(name) = 'png'::text) AND (lower((storage.foldername(name))[1]) = 'public'::text) AND (auth.role() = 'anon'::text)));




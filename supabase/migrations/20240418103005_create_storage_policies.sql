create policy "Enable delete access for all users"
on "storage"."buckets"
as permissive
for delete
to public
using (true);


create policy "Enable insert access for all users"
on "storage"."buckets"
as permissive
for insert
to public
with check (true);


create policy "Enable read access for all users"
on "storage"."buckets"
as permissive
for select
to public
using (true);


create policy "Enable delete access for all users"
on "storage"."objects"
as permissive
for delete
to public
using (true);


create policy "Enable insert access for all users"
on "storage"."objects"
as permissive
for insert
to public
with check (true);


create policy "Enable read access for all users"
on "storage"."objects"
as permissive
for select
to public
using (true);
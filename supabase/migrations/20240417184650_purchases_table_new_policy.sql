create policy "Enable insert for authenticated users only"
on "public"."purchases"
as PERMISSIVE
for INSERT
to authenticated
with check (
  true
);
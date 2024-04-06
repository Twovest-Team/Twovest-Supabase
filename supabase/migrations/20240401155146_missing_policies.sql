create policy "Enable read access for all users"
on "public"."conditions"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "public"."coupons"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "public"."coupons_has_brands"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "public"."images"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "public"."looks"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "public"."looks_has_products"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "public"."looks_has_styles"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "public"."purchases"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "public"."purchases_has_coupons"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "public"."purchases_has_offers"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "public"."sizes"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "public"."testing-table"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "public"."users_has_coupons"
as permissive
for select
to public
using (true);




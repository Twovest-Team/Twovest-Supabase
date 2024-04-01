revoke delete on table "public"."images" from "anon";

revoke insert on table "public"."images" from "anon";

revoke references on table "public"."images" from "anon";

revoke select on table "public"."images" from "anon";

revoke trigger on table "public"."images" from "anon";

revoke truncate on table "public"."images" from "anon";

revoke update on table "public"."images" from "anon";

revoke delete on table "public"."images" from "authenticated";

revoke insert on table "public"."images" from "authenticated";

revoke references on table "public"."images" from "authenticated";

revoke select on table "public"."images" from "authenticated";

revoke trigger on table "public"."images" from "authenticated";

revoke truncate on table "public"."images" from "authenticated";

revoke update on table "public"."images" from "authenticated";

revoke delete on table "public"."images" from "service_role";

revoke insert on table "public"."images" from "service_role";

revoke references on table "public"."images" from "service_role";

revoke select on table "public"."images" from "service_role";

revoke trigger on table "public"."images" from "service_role";

revoke truncate on table "public"."images" from "service_role";

revoke update on table "public"."images" from "service_role";

revoke delete on table "public"."testing-table" from "anon";

revoke insert on table "public"."testing-table" from "anon";

revoke references on table "public"."testing-table" from "anon";

revoke select on table "public"."testing-table" from "anon";

revoke trigger on table "public"."testing-table" from "anon";

revoke truncate on table "public"."testing-table" from "anon";

revoke update on table "public"."testing-table" from "anon";

revoke delete on table "public"."testing-table" from "authenticated";

revoke insert on table "public"."testing-table" from "authenticated";

revoke references on table "public"."testing-table" from "authenticated";

revoke select on table "public"."testing-table" from "authenticated";

revoke trigger on table "public"."testing-table" from "authenticated";

revoke truncate on table "public"."testing-table" from "authenticated";

revoke update on table "public"."testing-table" from "authenticated";

revoke delete on table "public"."testing-table" from "service_role";

revoke insert on table "public"."testing-table" from "service_role";

revoke references on table "public"."testing-table" from "service_role";

revoke select on table "public"."testing-table" from "service_role";

revoke trigger on table "public"."testing-table" from "service_role";

revoke truncate on table "public"."testing-table" from "service_role";

revoke update on table "public"."testing-table" from "service_role";

alter table "public"."images" drop constraint "images_id_product_fkey";

alter table "public"."images" drop constraint "Products_Images_pkey";

alter table "public"."testing-table" drop constraint "testing-table_pkey";

drop index if exists "public"."testing-table_pkey";

drop index if exists "public"."Products_Images_pkey";

drop table "public"."images";

drop table "public"."testing-table";

create table "public"."products_has_images" (
    "id" bigint generated by default as identity not null,
    "created_at" timestamp with time zone not null default now(),
    "url" text,
    "alt" text,
    "id_product" bigint not null
);


alter table "public"."products_has_images" enable row level security;

CREATE UNIQUE INDEX "Products_Images_pkey" ON public.products_has_images USING btree (id);

alter table "public"."products_has_images" add constraint "Products_Images_pkey" PRIMARY KEY using index "Products_Images_pkey";

alter table "public"."products_has_images" add constraint "images_id_product_fkey" FOREIGN KEY (id_product) REFERENCES products(id) ON UPDATE CASCADE not valid;

alter table "public"."products_has_images" validate constraint "images_id_product_fkey";

grant delete on table "public"."products_has_images" to "anon";

grant insert on table "public"."products_has_images" to "anon";

grant references on table "public"."products_has_images" to "anon";

grant select on table "public"."products_has_images" to "anon";

grant trigger on table "public"."products_has_images" to "anon";

grant truncate on table "public"."products_has_images" to "anon";

grant update on table "public"."products_has_images" to "anon";

grant delete on table "public"."products_has_images" to "authenticated";

grant insert on table "public"."products_has_images" to "authenticated";

grant references on table "public"."products_has_images" to "authenticated";

grant select on table "public"."products_has_images" to "authenticated";

grant trigger on table "public"."products_has_images" to "authenticated";

grant truncate on table "public"."products_has_images" to "authenticated";

grant update on table "public"."products_has_images" to "authenticated";

grant delete on table "public"."products_has_images" to "service_role";

grant insert on table "public"."products_has_images" to "service_role";

grant references on table "public"."products_has_images" to "service_role";

grant select on table "public"."products_has_images" to "service_role";

grant trigger on table "public"."products_has_images" to "service_role";

grant truncate on table "public"."products_has_images" to "service_role";

grant update on table "public"."products_has_images" to "service_role";

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
on "public"."products_has_images"
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
on "public"."users_has_coupons"
as permissive
for select
to public
using (true);




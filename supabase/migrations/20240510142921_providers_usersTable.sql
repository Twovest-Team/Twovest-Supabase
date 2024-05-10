alter table "public"."collections_has_looks" drop constraint "collections_has_looks_id_collection_fkey";

alter table "public"."collections_has_looks" drop constraint "collections_has_looks_id_look_fkey";

alter table "public"."looks_has_products" drop constraint "looks_has_products_id_look_fkey";

alter table "public"."looks_has_products" drop constraint "looks_has_products_id_product_fkey";

alter table "public"."looks_has_styles" drop constraint "looks_has_styles_id_look_fkey";

alter table "public"."looks_has_styles" drop constraint "looks_has_styles_id_style_fkey";

alter table "public"."users" add column "provider" text not null default ''::text;

alter table "public"."collections_has_looks" add constraint "public_collections_has_looks_id_collection_fkey" FOREIGN KEY (id_collection) REFERENCES collections(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."collections_has_looks" validate constraint "public_collections_has_looks_id_collection_fkey";

alter table "public"."collections_has_looks" add constraint "public_collections_has_looks_id_look_fkey" FOREIGN KEY (id_look) REFERENCES looks(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."collections_has_looks" validate constraint "public_collections_has_looks_id_look_fkey";

alter table "public"."looks_has_products" add constraint "public_looks_has_products_id_look_fkey" FOREIGN KEY (id_look) REFERENCES looks(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."looks_has_products" validate constraint "public_looks_has_products_id_look_fkey";

alter table "public"."looks_has_products" add constraint "public_looks_has_products_id_product_fkey" FOREIGN KEY (id_product) REFERENCES products(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."looks_has_products" validate constraint "public_looks_has_products_id_product_fkey";

alter table "public"."looks_has_styles" add constraint "public_looks_has_styles_id_look_fkey" FOREIGN KEY (id_look) REFERENCES looks(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."looks_has_styles" validate constraint "public_looks_has_styles_id_look_fkey";

alter table "public"."looks_has_styles" add constraint "public_looks_has_styles_id_style_fkey" FOREIGN KEY (id_style) REFERENCES styles(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."looks_has_styles" validate constraint "public_looks_has_styles_id_style_fkey";

create policy "Permission"
on "public"."looks"
as permissive
for insert
to authenticated
with check (true);




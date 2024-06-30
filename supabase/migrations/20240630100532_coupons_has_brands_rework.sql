CREATE UNIQUE INDEX coupons_has_brands_pkey ON public.coupons_has_brands USING btree (id_brand, id_coupon);

alter table "public"."coupons_has_brands" add constraint "coupons_has_brands_pkey" PRIMARY KEY using index "coupons_has_brands_pkey";




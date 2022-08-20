CREATE TABLE "public"."User" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "fullName" text NOT NULL, "companyName" text NOT NULL, "age" int NOT NULL, PRIMARY KEY ("id") );
CREATE EXTENSION IF NOT EXISTS pgcrypto;

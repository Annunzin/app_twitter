CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "Username" varchar, "img_url" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "twaats" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "Content" varchar, "img_url" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "user_id" integer);
CREATE INDEX "index_twaats_on_user_id" ON "twaats" ("user_id");
INSERT INTO "schema_migrations" (version) VALUES
('20170309074354'),
('20170316072145'),
('20170316073558'),
('20170316073607'),
('20170316073658'),
('20170316073842');



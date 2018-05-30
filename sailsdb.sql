/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : PostgreSQL
 Source Server Version : 100004
 Source Host           : localhost:5432
 Source Catalog        : restaurant
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 100004
 File Encoding         : 65001

 Date: 30/05/2018 23:55:43
*/


-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS "category";
CREATE TABLE "category" (
  "createdAt" int8,
  "updatedAt" int8,
  "id" int4 NOT NULL ,
  "name" text COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "category" OWNER TO "postgres";

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO "category" VALUES (1527611918109, 1527611918109, 1, 'coffee');
INSERT INTO "category" VALUES (1527611965568, 1527611965568, 4, 'buffet');
INSERT INTO "category" VALUES (1527612267842, 1527612267842, 5, 'vegan');
INSERT INTO "category" VALUES (1527612279445, 1527612279445, 6, 'meat lovers');
INSERT INTO "category" VALUES (1527612289622, 1527612289622, 7, 'pub');
INSERT INTO "category" VALUES (1527612389927, 1527612389927, 8, 'fast food');
COMMIT;

-- ----------------------------
-- Table structure for resto
-- ----------------------------
DROP TABLE IF EXISTS "resto";
CREATE TABLE "resto" (
  "createdAt" int8,
  "updatedAt" int8,
  "id" int4 NOT NULL,
  "name" text COLLATE "pg_catalog"."default",
  "open" text COLLATE "pg_catalog"."default",
  "close" text COLLATE "pg_catalog"."default",
  "category_id" int8
)
;
ALTER TABLE "resto" OWNER TO "postgres";

-- ----------------------------
-- Records of resto
-- ----------------------------
BEGIN;
INSERT INTO "resto" VALUES (1527576657117, 1527576657117, 1, 'starbucks', '2018-05-21', '2018-05-27', 1);
INSERT INTO "resto" VALUES (1527576748199, 1527576748199, 2, 'jco', '2018-05-21', '2018-05-27', 1);
INSERT INTO "resto" VALUES (1527576759723, 1527576759723, 3, 'warteg', '2018-05-26', '2018-05-27', 2);
INSERT INTO "resto" VALUES (1527576770258, 1527576770258, 4, 'warsun', '2018-05-23', '2018-05-27', 2);
INSERT INTO "resto" VALUES (1527612306956, 1527612306956, 5, 'hoolie', '2018-05-26', '2018-05-27', 7);
INSERT INTO "resto" VALUES (1527612326403, 1527612326403, 6, 'LV beer garden', '2018-05-24', '2018-05-27', 7);
INSERT INTO "resto" VALUES (1527612344274, 1527612344274, 7, 'holly smoke''s', '2018-05-24', '2018-05-27', 6);
INSERT INTO "resto" VALUES (1527612348363, 1527612348363, 8, 'andakar', '2018-05-24', '2018-05-27', 6);
INSERT INTO "resto" VALUES (1527612366670, 1527612366670, 9, 'sizzlers', '2018-05-24', '2018-05-27', 5);
INSERT INTO "resto" VALUES (1527612374801, 1527612374801, 10, 'pizza hut', '2018-05-21', '2018-05-27', 8);
INSERT INTO "resto" VALUES (1527612379913, 1527612379913, 11, 'mcdonalds', '2018-05-21', '2018-05-27', 8);
INSERT INTO "resto" VALUES (1527612383296, 1527612383296, 12, 'KFC', '2018-05-21', '2018-05-27', 8);
INSERT INTO "resto" VALUES (1527617864051, 1527696061656, 13, 'hokben', '2018-05-21', '2018-05-27', 8);
COMMIT;


-- ----------------------------
-- Primary Key structure for table category
-- ----------------------------
ALTER TABLE "category" ADD CONSTRAINT "category_pkey" PRIMARY KEY ("id");


-- ----------------------------
-- Primary Key structure for table resto
-- ----------------------------
ALTER TABLE "resto" ADD CONSTRAINT "resto_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Sequence structure for config_info_aggr_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "nacos"."config_info_aggr_id_seq";
CREATE SEQUENCE "nacos"."config_info_aggr_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "nacos"."config_info_aggr_id_seq" OWNER TO "system";

-- ----------------------------
-- Sequence structure for config_info_beta_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "nacos"."config_info_beta_id_seq";
CREATE SEQUENCE "nacos"."config_info_beta_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "nacos"."config_info_beta_id_seq" OWNER TO "system";

-- ----------------------------
-- Sequence structure for config_info_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "nacos"."config_info_id_seq";
CREATE SEQUENCE "nacos"."config_info_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "nacos"."config_info_id_seq" OWNER TO "system";

-- ----------------------------
-- Sequence structure for config_info_tag_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "nacos"."config_info_tag_id_seq";
CREATE SEQUENCE "nacos"."config_info_tag_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "nacos"."config_info_tag_id_seq" OWNER TO "system";

-- ----------------------------
-- Sequence structure for config_tags_relation_nid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "nacos"."config_tags_relation_nid_seq";
CREATE SEQUENCE "nacos"."config_tags_relation_nid_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "nacos"."config_tags_relation_nid_seq" OWNER TO "system";

-- ----------------------------
-- Sequence structure for group_capacity_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "nacos"."group_capacity_id_seq";
CREATE SEQUENCE "nacos"."group_capacity_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "nacos"."group_capacity_id_seq" OWNER TO "system";

-- ----------------------------
-- Sequence structure for his_config_info_nid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "nacos"."his_config_info_nid_seq";
CREATE SEQUENCE "nacos"."his_config_info_nid_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "nacos"."his_config_info_nid_seq" OWNER TO "system";

-- ----------------------------
-- Sequence structure for permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "nacos"."permissions_id_seq";
CREATE SEQUENCE "nacos"."permissions_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "nacos"."permissions_id_seq" OWNER TO "system";

-- ----------------------------
-- Sequence structure for roles_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "nacos"."roles_id_seq";
CREATE SEQUENCE "nacos"."roles_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "nacos"."roles_id_seq" OWNER TO "system";

-- ----------------------------
-- Sequence structure for tenant_capacity_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "nacos"."tenant_capacity_id_seq";
CREATE SEQUENCE "nacos"."tenant_capacity_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "nacos"."tenant_capacity_id_seq" OWNER TO "system";

-- ----------------------------
-- Sequence structure for tenant_info_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "nacos"."tenant_info_id_seq";
CREATE SEQUENCE "nacos"."tenant_info_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "nacos"."tenant_info_id_seq" OWNER TO "system";

-- ----------------------------
-- Sequence structure for users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "nacos"."users_id_seq";
CREATE SEQUENCE "nacos"."users_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "nacos"."users_id_seq" OWNER TO "system";

-- ----------------------------
-- Table structure for config_info
-- ----------------------------
DROP TABLE IF EXISTS "nacos"."config_info";
CREATE TABLE "nacos"."config_info" (
                                       "id" int8 NOT NULL DEFAULT nextval('"nacos".config_info_id_seq'::regclass),
                                       "data_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                       "group_id" varchar(128) COLLATE "pg_catalog"."default",
                                       "content" text COLLATE "pg_catalog"."default" NOT NULL,
                                       "md5" varchar(32) COLLATE "pg_catalog"."default",
                                       "gmt_create" timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                       "gmt_modified" timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                       "src_user" text COLLATE "pg_catalog"."default",
                                       "src_ip" varchar(50) COLLATE "pg_catalog"."default",
                                       "app_name" varchar(128) COLLATE "pg_catalog"."default",
                                       "tenant_id" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::varchar,
                                       "c_desc" varchar(256) COLLATE "pg_catalog"."default",
                                       "c_use" varchar(64) COLLATE "pg_catalog"."default",
                                       "effect" varchar(64) COLLATE "pg_catalog"."default",
                                       "type" varchar(64) COLLATE "pg_catalog"."default",
                                       "c_schema" text COLLATE "pg_catalog"."default",
                                       "encrypted_data_key" varchar(1024) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::varchar
)
;
ALTER TABLE "nacos"."config_info" OWNER TO "system";
COMMENT ON COLUMN "nacos"."config_info"."id" IS 'id';
COMMENT ON COLUMN "nacos"."config_info"."data_id" IS 'data_id';
COMMENT ON COLUMN "nacos"."config_info"."group_id" IS 'group_id';
COMMENT ON COLUMN "nacos"."config_info"."content" IS 'content';
COMMENT ON COLUMN "nacos"."config_info"."md5" IS 'md5';
COMMENT ON COLUMN "nacos"."config_info"."gmt_create" IS '创建时间';
COMMENT ON COLUMN "nacos"."config_info"."gmt_modified" IS '修改时间';
COMMENT ON COLUMN "nacos"."config_info"."src_user" IS 'source user';
COMMENT ON COLUMN "nacos"."config_info"."src_ip" IS 'source ip';
COMMENT ON COLUMN "nacos"."config_info"."app_name" IS 'app_name';
COMMENT ON COLUMN "nacos"."config_info"."tenant_id" IS '租户字段';
COMMENT ON COLUMN "nacos"."config_info"."c_desc" IS 'configuration description';
COMMENT ON COLUMN "nacos"."config_info"."c_use" IS 'configuration usage';
COMMENT ON COLUMN "nacos"."config_info"."effect" IS '配置生效的描述';
COMMENT ON COLUMN "nacos"."config_info"."type" IS '配置的类型';
COMMENT ON COLUMN "nacos"."config_info"."c_schema" IS '配置的模式';
COMMENT ON COLUMN "nacos"."config_info"."encrypted_data_key" IS '密钥';
COMMENT ON TABLE "nacos"."config_info" IS 'config_info';

-- ----------------------------
-- Records of config_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for config_info_aggr
-- ----------------------------
DROP TABLE IF EXISTS "nacos"."config_info_aggr";
CREATE TABLE "nacos"."config_info_aggr" (
                                            "id" int8 NOT NULL DEFAULT nextval('"nacos".config_info_aggr_id_seq'::regclass),
                                            "data_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                            "group_id" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
                                            "datum_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                            "content" text COLLATE "pg_catalog"."default" NOT NULL,
                                            "gmt_modified" timestamp(0) NOT NULL,
                                            "app_name" varchar(128) COLLATE "pg_catalog"."default",
                                            "tenant_id" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::varchar
)
;
ALTER TABLE "nacos"."config_info_aggr" OWNER TO "system";
COMMENT ON COLUMN "nacos"."config_info_aggr"."id" IS 'id';
COMMENT ON COLUMN "nacos"."config_info_aggr"."data_id" IS 'data_id';
COMMENT ON COLUMN "nacos"."config_info_aggr"."group_id" IS 'group_id';
COMMENT ON COLUMN "nacos"."config_info_aggr"."datum_id" IS 'datum_id';
COMMENT ON COLUMN "nacos"."config_info_aggr"."content" IS '内容';
COMMENT ON COLUMN "nacos"."config_info_aggr"."gmt_modified" IS '修改时间';
COMMENT ON COLUMN "nacos"."config_info_aggr"."app_name" IS 'app_name';
COMMENT ON COLUMN "nacos"."config_info_aggr"."tenant_id" IS '租户字段';
COMMENT ON TABLE "nacos"."config_info_aggr" IS '增加租户字段';

-- ----------------------------
-- Records of config_info_aggr
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for config_info_beta
-- ----------------------------
DROP TABLE IF EXISTS "nacos"."config_info_beta";
CREATE TABLE "nacos"."config_info_beta" (
                                            "id" int8 NOT NULL DEFAULT nextval('"nacos".config_info_beta_id_seq'::regclass),
                                            "data_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                            "group_id" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
                                            "app_name" varchar(128) COLLATE "pg_catalog"."default",
                                            "content" text COLLATE "pg_catalog"."default" NOT NULL,
                                            "beta_ips" varchar(1024) COLLATE "pg_catalog"."default",
                                            "md5" varchar(32) COLLATE "pg_catalog"."default",
                                            "gmt_create" timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                            "gmt_modified" timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                            "src_user" text COLLATE "pg_catalog"."default",
                                            "src_ip" varchar(50) COLLATE "pg_catalog"."default",
                                            "tenant_id" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::varchar,
                                            "encrypted_data_key" varchar(1024) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::varchar
)
;
ALTER TABLE "nacos"."config_info_beta" OWNER TO "system";
COMMENT ON COLUMN "nacos"."config_info_beta"."id" IS 'id';
COMMENT ON COLUMN "nacos"."config_info_beta"."data_id" IS 'data_id';
COMMENT ON COLUMN "nacos"."config_info_beta"."group_id" IS 'group_id';
COMMENT ON COLUMN "nacos"."config_info_beta"."app_name" IS 'app_name';
COMMENT ON COLUMN "nacos"."config_info_beta"."content" IS 'content';
COMMENT ON COLUMN "nacos"."config_info_beta"."beta_ips" IS 'betaIps';
COMMENT ON COLUMN "nacos"."config_info_beta"."md5" IS 'md5';
COMMENT ON COLUMN "nacos"."config_info_beta"."gmt_create" IS '创建时间';
COMMENT ON COLUMN "nacos"."config_info_beta"."gmt_modified" IS '修改时间';
COMMENT ON COLUMN "nacos"."config_info_beta"."src_user" IS 'source user';
COMMENT ON COLUMN "nacos"."config_info_beta"."src_ip" IS 'source ip';
COMMENT ON COLUMN "nacos"."config_info_beta"."tenant_id" IS '租户字段';
COMMENT ON COLUMN "nacos"."config_info_beta"."encrypted_data_key" IS '密钥';
COMMENT ON TABLE "nacos"."config_info_beta" IS 'config_info_beta';

-- ----------------------------
-- Records of config_info_beta
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for config_info_tag
-- ----------------------------
DROP TABLE IF EXISTS "nacos"."config_info_tag";
CREATE TABLE "nacos"."config_info_tag" (
                                           "id" int8 NOT NULL DEFAULT nextval('"nacos".config_info_tag_id_seq'::regclass),
                                           "data_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                           "group_id" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
                                           "tenant_id" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::varchar,
                                           "tag_id" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
                                           "app_name" varchar(128) COLLATE "pg_catalog"."default",
                                           "content" text COLLATE "pg_catalog"."default" NOT NULL,
                                           "md5" varchar(32) COLLATE "pg_catalog"."default",
                                           "gmt_create" timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                           "gmt_modified" timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                           "src_user" text COLLATE "pg_catalog"."default",
                                           "src_ip" varchar(50) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "nacos"."config_info_tag" OWNER TO "system";
COMMENT ON COLUMN "nacos"."config_info_tag"."id" IS 'id';
COMMENT ON COLUMN "nacos"."config_info_tag"."data_id" IS 'data_id';
COMMENT ON COLUMN "nacos"."config_info_tag"."group_id" IS 'group_id';
COMMENT ON COLUMN "nacos"."config_info_tag"."tenant_id" IS 'tenant_id';
COMMENT ON COLUMN "nacos"."config_info_tag"."tag_id" IS 'tag_id';
COMMENT ON COLUMN "nacos"."config_info_tag"."app_name" IS 'app_name';
COMMENT ON COLUMN "nacos"."config_info_tag"."content" IS 'content';
COMMENT ON COLUMN "nacos"."config_info_tag"."md5" IS 'md5';
COMMENT ON COLUMN "nacos"."config_info_tag"."gmt_create" IS '创建时间';
COMMENT ON COLUMN "nacos"."config_info_tag"."gmt_modified" IS '修改时间';
COMMENT ON COLUMN "nacos"."config_info_tag"."src_user" IS 'source user';
COMMENT ON COLUMN "nacos"."config_info_tag"."src_ip" IS 'source ip';
COMMENT ON TABLE "nacos"."config_info_tag" IS 'config_info_tag';

-- ----------------------------
-- Records of config_info_tag
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for config_tags_relation
-- ----------------------------
DROP TABLE IF EXISTS "nacos"."config_tags_relation";
CREATE TABLE "nacos"."config_tags_relation" (
                                                "id" int8 NOT NULL,
                                                "tag_name" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
                                                "tag_type" varchar(64) COLLATE "pg_catalog"."default",
                                                "data_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                                "group_id" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
                                                "tenant_id" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::varchar,
                                                "nid" int8 NOT NULL DEFAULT nextval('"nacos".config_tags_relation_nid_seq'::regclass)
)
;
ALTER TABLE "nacos"."config_tags_relation" OWNER TO "system";
COMMENT ON COLUMN "nacos"."config_tags_relation"."id" IS 'id';
COMMENT ON COLUMN "nacos"."config_tags_relation"."tag_name" IS 'tag_name';
COMMENT ON COLUMN "nacos"."config_tags_relation"."tag_type" IS 'tag_type';
COMMENT ON COLUMN "nacos"."config_tags_relation"."data_id" IS 'data_id';
COMMENT ON COLUMN "nacos"."config_tags_relation"."group_id" IS 'group_id';
COMMENT ON COLUMN "nacos"."config_tags_relation"."tenant_id" IS 'tenant_id';
COMMENT ON COLUMN "nacos"."config_tags_relation"."nid" IS 'nid, 自增长标识';
COMMENT ON TABLE "nacos"."config_tags_relation" IS 'config_tag_relation';

-- ----------------------------
-- Records of config_tags_relation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for group_capacity
-- ----------------------------
DROP TABLE IF EXISTS "nacos"."group_capacity";
CREATE TABLE "nacos"."group_capacity" (
                                          "id" int8 NOT NULL DEFAULT nextval('"nacos".group_capacity_id_seq'::regclass),
                                          "group_id" varchar(128) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::varchar,
                                          "quota" int8 NOT NULL DEFAULT 0,
                                          "usage" int8 NOT NULL DEFAULT 0,
                                          "max_size" int8 NOT NULL DEFAULT 0,
                                          "max_aggr_count" int8 NOT NULL DEFAULT 0,
                                          "max_aggr_size" int8 NOT NULL DEFAULT 0,
                                          "max_history_count" int8 NOT NULL DEFAULT 0,
                                          "gmt_create" timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                          "gmt_modified" timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;
ALTER TABLE "nacos"."group_capacity" OWNER TO "system";
COMMENT ON COLUMN "nacos"."group_capacity"."id" IS '主键ID';
COMMENT ON COLUMN "nacos"."group_capacity"."group_id" IS 'Group ID，空字符表示整个集群';
COMMENT ON COLUMN "nacos"."group_capacity"."quota" IS '配额，0表示使用默认值';
COMMENT ON COLUMN "nacos"."group_capacity"."usage" IS '使用量';
COMMENT ON COLUMN "nacos"."group_capacity"."max_size" IS '单个配置大小上限，单位为字节，0表示使用默认值';
COMMENT ON COLUMN "nacos"."group_capacity"."max_aggr_count" IS '聚合子配置最大个数，，0表示使用默认值';
COMMENT ON COLUMN "nacos"."group_capacity"."max_aggr_size" IS '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值';
COMMENT ON COLUMN "nacos"."group_capacity"."max_history_count" IS '最大变更历史数量';
COMMENT ON COLUMN "nacos"."group_capacity"."gmt_create" IS '创建时间';
COMMENT ON COLUMN "nacos"."group_capacity"."gmt_modified" IS '修改时间';
COMMENT ON TABLE "nacos"."group_capacity" IS '集群、各Group容量信息表';

-- ----------------------------
-- Records of group_capacity
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for his_config_info
-- ----------------------------
DROP TABLE IF EXISTS "nacos"."his_config_info";
CREATE TABLE "nacos"."his_config_info" (
                                           "id" numeric(10,0) NOT NULL,
                                           "nid" int8 NOT NULL DEFAULT nextval('"nacos".his_config_info_nid_seq'::regclass),
                                           "data_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                           "group_id" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
                                           "app_name" varchar(128) COLLATE "pg_catalog"."default",
                                           "content" text COLLATE "pg_catalog"."default" NOT NULL,
                                           "md5" varchar(32) COLLATE "pg_catalog"."default",
                                           "gmt_create" timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                           "gmt_modified" timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                           "src_user" text COLLATE "pg_catalog"."default",
                                           "src_ip" varchar(50) COLLATE "pg_catalog"."default",
                                           "op_type" char(10) COLLATE "pg_catalog"."default",
                                           "tenant_id" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::varchar,
                                           "encrypted_data_key" varchar(1024) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::varchar
)
;
ALTER TABLE "nacos"."his_config_info" OWNER TO "system";
COMMENT ON COLUMN "nacos"."his_config_info"."id" IS 'id';
COMMENT ON COLUMN "nacos"."his_config_info"."nid" IS 'nid, 自增标识';
COMMENT ON COLUMN "nacos"."his_config_info"."data_id" IS 'data_id';
COMMENT ON COLUMN "nacos"."his_config_info"."group_id" IS 'group_id';
COMMENT ON COLUMN "nacos"."his_config_info"."app_name" IS 'app_name';
COMMENT ON COLUMN "nacos"."his_config_info"."content" IS 'content';
COMMENT ON COLUMN "nacos"."his_config_info"."md5" IS 'md5';
COMMENT ON COLUMN "nacos"."his_config_info"."gmt_create" IS '创建时间';
COMMENT ON COLUMN "nacos"."his_config_info"."gmt_modified" IS '修改时间';
COMMENT ON COLUMN "nacos"."his_config_info"."src_user" IS 'source user';
COMMENT ON COLUMN "nacos"."his_config_info"."src_ip" IS 'source ip';
COMMENT ON COLUMN "nacos"."his_config_info"."op_type" IS 'operation type';
COMMENT ON COLUMN "nacos"."his_config_info"."tenant_id" IS '租户字段';
COMMENT ON COLUMN "nacos"."his_config_info"."encrypted_data_key" IS '密钥';
COMMENT ON TABLE "nacos"."his_config_info" IS '多租户改造';

-- ----------------------------
-- Records of his_config_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS "nacos"."permissions";
CREATE TABLE "nacos"."permissions" (
                                       "id" int8 NOT NULL DEFAULT nextval('"nacos".permissions_id_seq'::regclass),
                                       "role" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
                                       "resource" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
                                       "action" varchar(8) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "nacos"."permissions" OWNER TO "system";
COMMENT ON COLUMN "nacos"."permissions"."id" IS 'id';
COMMENT ON COLUMN "nacos"."permissions"."role" IS 'role';
COMMENT ON COLUMN "nacos"."permissions"."resource" IS 'resource';
COMMENT ON COLUMN "nacos"."permissions"."action" IS 'action';

-- ----------------------------
-- Records of permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS "nacos"."roles";
CREATE TABLE "nacos"."roles" (
                                 "id" int8 NOT NULL DEFAULT nextval('"nacos".roles_id_seq'::regclass),
                                 "username" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
                                 "role" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "nacos"."roles" OWNER TO "system";
COMMENT ON COLUMN "nacos"."roles"."id" IS 'id';
COMMENT ON COLUMN "nacos"."roles"."username" IS 'username';
COMMENT ON COLUMN "nacos"."roles"."role" IS 'role';

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO "nacos"."roles" ("id", "username", "role") VALUES (1, 'nacos', 'ROLE_ADMIN');
COMMIT;

-- ----------------------------
-- Table structure for tenant_capacity
-- ----------------------------
DROP TABLE IF EXISTS "nacos"."tenant_capacity";
CREATE TABLE "nacos"."tenant_capacity" (
                                           "id" int8 NOT NULL DEFAULT nextval('"nacos".tenant_capacity_id_seq'::regclass),
                                           "tenant_id" varchar(128) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::varchar,
                                           "quota" int8 NOT NULL DEFAULT 0,
                                           "usage" int8 NOT NULL DEFAULT 0,
                                           "max_size" int8 NOT NULL DEFAULT 0,
                                           "max_aggr_count" int8 NOT NULL DEFAULT 0,
                                           "max_aggr_size" int8 NOT NULL DEFAULT 0,
                                           "max_history_count" int8 NOT NULL DEFAULT 0,
                                           "gmt_create" timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                           "gmt_modified" timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;
ALTER TABLE "nacos"."tenant_capacity" OWNER TO "system";
COMMENT ON COLUMN "nacos"."tenant_capacity"."id" IS '主键ID';
COMMENT ON COLUMN "nacos"."tenant_capacity"."tenant_id" IS 'Tenant ID';
COMMENT ON COLUMN "nacos"."tenant_capacity"."quota" IS '配额，0表示使用默认值';
COMMENT ON COLUMN "nacos"."tenant_capacity"."usage" IS '使用量';
COMMENT ON COLUMN "nacos"."tenant_capacity"."max_size" IS '单个配置大小上限，单位为字节，0表示使用默认值';
COMMENT ON COLUMN "nacos"."tenant_capacity"."max_aggr_count" IS '聚合子配置最大个数';
COMMENT ON COLUMN "nacos"."tenant_capacity"."max_aggr_size" IS '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值';
COMMENT ON COLUMN "nacos"."tenant_capacity"."max_history_count" IS '最大变更历史数量';
COMMENT ON COLUMN "nacos"."tenant_capacity"."gmt_create" IS '创建时间';
COMMENT ON COLUMN "nacos"."tenant_capacity"."gmt_modified" IS '修改时间';
COMMENT ON TABLE "nacos"."tenant_capacity" IS '租户容量信息表';

-- ----------------------------
-- Records of tenant_capacity
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tenant_info
-- ----------------------------
DROP TABLE IF EXISTS "nacos"."tenant_info";
CREATE TABLE "nacos"."tenant_info" (
                                       "id" int8 NOT NULL DEFAULT nextval('"nacos".tenant_info_id_seq'::regclass),
                                       "kp" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
                                       "tenant_id" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::varchar,
                                       "tenant_name" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::varchar,
                                       "tenant_desc" varchar(256) COLLATE "pg_catalog"."default",
                                       "create_source" varchar(32) COLLATE "pg_catalog"."default",
                                       "gmt_create" int8 NOT NULL,
                                       "gmt_modified" int8 NOT NULL
)
;
ALTER TABLE "nacos"."tenant_info" OWNER TO "system";
COMMENT ON COLUMN "nacos"."tenant_info"."id" IS 'id';
COMMENT ON COLUMN "nacos"."tenant_info"."kp" IS 'kp';
COMMENT ON COLUMN "nacos"."tenant_info"."tenant_id" IS 'tenant_id';
COMMENT ON COLUMN "nacos"."tenant_info"."tenant_name" IS 'tenant_name';
COMMENT ON COLUMN "nacos"."tenant_info"."tenant_desc" IS 'tenant_desc';
COMMENT ON COLUMN "nacos"."tenant_info"."create_source" IS 'create_source';
COMMENT ON COLUMN "nacos"."tenant_info"."gmt_create" IS '创建时间';
COMMENT ON COLUMN "nacos"."tenant_info"."gmt_modified" IS '修改时间';
COMMENT ON TABLE "nacos"."tenant_info" IS 'tenant_info';

-- ----------------------------
-- Records of tenant_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "nacos"."users";
CREATE TABLE "nacos"."users" (
                                 "id" int8 NOT NULL DEFAULT nextval('"nacos".users_id_seq'::regclass),
                                 "username" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
                                 "password" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
                                 "enabled" int2 NOT NULL
)
;
ALTER TABLE "nacos"."users" OWNER TO "system";
COMMENT ON COLUMN "nacos"."users"."id" IS 'id';
COMMENT ON COLUMN "nacos"."users"."username" IS 'username';
COMMENT ON COLUMN "nacos"."users"."password" IS 'password';
COMMENT ON COLUMN "nacos"."users"."enabled" IS 'enabled';

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO "nacos"."users" ("id", "username", "password", "enabled") VALUES (1, 'nacos', '$2a$10$EuWPZHzz32dJN7jexM34MOeYirDdFAZm2kuWj7VEOJhhZkDrxfvUu', 1);
COMMIT;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "nacos"."config_info_aggr_id_seq"
    OWNED BY "nacos"."config_info_aggr"."id";
SELECT setval('"nacos"."config_info_aggr_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "nacos"."config_info_beta_id_seq"
    OWNED BY "nacos"."config_info_beta"."id";
SELECT setval('"nacos"."config_info_beta_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "nacos"."config_info_id_seq"
    OWNED BY "nacos"."config_info"."id";
SELECT setval('"nacos"."config_info_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "nacos"."config_info_tag_id_seq"
    OWNED BY "nacos"."config_info_tag"."id";
SELECT setval('"nacos"."config_info_tag_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "nacos"."config_tags_relation_nid_seq"
    OWNED BY "nacos"."config_tags_relation"."nid";
SELECT setval('"nacos"."config_tags_relation_nid_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "nacos"."group_capacity_id_seq"
    OWNED BY "nacos"."group_capacity"."id";
SELECT setval('"nacos"."group_capacity_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "nacos"."his_config_info_nid_seq"
    OWNED BY "nacos"."his_config_info"."nid";
SELECT setval('"nacos"."his_config_info_nid_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "nacos"."permissions_id_seq"
    OWNED BY "nacos"."permissions"."id";
SELECT setval('"nacos"."permissions_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "nacos"."roles_id_seq"
    OWNED BY "nacos"."roles"."id";
SELECT setval('"nacos"."roles_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "nacos"."tenant_capacity_id_seq"
    OWNED BY "nacos"."tenant_capacity"."id";
SELECT setval('"nacos"."tenant_capacity_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "nacos"."tenant_info_id_seq"
    OWNED BY "nacos"."tenant_info"."id";
SELECT setval('"nacos"."tenant_info_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "nacos"."users_id_seq"
    OWNED BY "nacos"."users"."id";
SELECT setval('"nacos"."users_id_seq"', 2, false);

-- ----------------------------
-- Uniques structure for table config_info
-- ----------------------------
ALTER TABLE "nacos"."config_info" ADD CONSTRAINT "uk_configinfo_datagrouptenant_C827FEB8" UNIQUE ("data_id", "group_id", "tenant_id");

-- ----------------------------
-- Primary Key structure for table config_info
-- ----------------------------
ALTER TABLE "nacos"."config_info" ADD CONSTRAINT "PRIMARY_73F26186" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table config_info_aggr
-- ----------------------------
ALTER TABLE "nacos"."config_info_aggr" ADD CONSTRAINT "uk_configinfoaggr_datagrouptenantdatum_8D1F61BA" UNIQUE ("data_id", "group_id", "tenant_id", "datum_id");

-- ----------------------------
-- Primary Key structure for table config_info_aggr
-- ----------------------------
ALTER TABLE "nacos"."config_info_aggr" ADD CONSTRAINT "PRIMARY_F787E5C0" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table config_info_beta
-- ----------------------------
ALTER TABLE "nacos"."config_info_beta" ADD CONSTRAINT "uk_configinfobeta_datagrouptenant_E4D7C681" UNIQUE ("data_id", "group_id", "tenant_id");

-- ----------------------------
-- Primary Key structure for table config_info_beta
-- ----------------------------
ALTER TABLE "nacos"."config_info_beta" ADD CONSTRAINT "PRIMARY_E3F5B61F" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table config_info_tag
-- ----------------------------
ALTER TABLE "nacos"."config_info_tag" ADD CONSTRAINT "uk_configinfotag_datagrouptenanttag_6AB0E9AE" UNIQUE ("data_id", "group_id", "tenant_id", "tag_id");

-- ----------------------------
-- Primary Key structure for table config_info_tag
-- ----------------------------
ALTER TABLE "nacos"."config_info_tag" ADD CONSTRAINT "PRIMARY_26447CE1" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table config_tags_relation
-- ----------------------------
CREATE INDEX "idx_tenant_id_4FB846F8" ON "nacos"."config_tags_relation" USING btree (
    "tenant_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS FIRST
    );

-- ----------------------------
-- Uniques structure for table config_tags_relation
-- ----------------------------
ALTER TABLE "nacos"."config_tags_relation" ADD CONSTRAINT "uk_configtagrelation_configidtag_25395725" UNIQUE ("id", "tag_name", "tag_type");

-- ----------------------------
-- Primary Key structure for table config_tags_relation
-- ----------------------------
ALTER TABLE "nacos"."config_tags_relation" ADD CONSTRAINT "PRIMARY_82226084" PRIMARY KEY ("nid");

-- ----------------------------
-- Uniques structure for table group_capacity
-- ----------------------------
ALTER TABLE "nacos"."group_capacity" ADD CONSTRAINT "uk_group_id_377325F2" UNIQUE ("group_id");

-- ----------------------------
-- Primary Key structure for table group_capacity
-- ----------------------------
ALTER TABLE "nacos"."group_capacity" ADD CONSTRAINT "PRIMARY_D72B7E75" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table his_config_info
-- ----------------------------
CREATE INDEX "idx_did_8DE97C10" ON "nacos"."his_config_info" USING btree (
    "data_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS FIRST
    );
CREATE INDEX "idx_gmt_create_F3B3E5A1" ON "nacos"."his_config_info" USING btree (
    "gmt_create" "sys"."mysqltimestamp_ops" ASC NULLS FIRST
    );
CREATE INDEX "idx_gmt_modified_42DBB1BB" ON "nacos"."his_config_info" USING btree (
    "gmt_modified" "sys"."mysqltimestamp_ops" ASC NULLS FIRST
    );

-- ----------------------------
-- Primary Key structure for table his_config_info
-- ----------------------------
ALTER TABLE "nacos"."his_config_info" ADD CONSTRAINT "PRIMARY_93A4DC6B" PRIMARY KEY ("nid");

-- ----------------------------
-- Uniques structure for table permissions
-- ----------------------------
ALTER TABLE "nacos"."permissions" ADD CONSTRAINT "uk_role_permission_1DFC6980" UNIQUE ("role", "resource", "action");

-- ----------------------------
-- Primary Key structure for table permissions
-- ----------------------------
ALTER TABLE "nacos"."permissions" ADD CONSTRAINT "PRIMARY_BE77F07F" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table roles
-- ----------------------------
ALTER TABLE "nacos"."roles" ADD CONSTRAINT "idx_user_role_2451DF41" UNIQUE ("username", "role");

-- ----------------------------
-- Primary Key structure for table roles
-- ----------------------------
ALTER TABLE "nacos"."roles" ADD CONSTRAINT "PRIMARY_F8BDF8B8" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table tenant_capacity
-- ----------------------------
ALTER TABLE "nacos"."tenant_capacity" ADD CONSTRAINT "uk_tenant_id_22935E1" UNIQUE ("tenant_id");

-- ----------------------------
-- Primary Key structure for table tenant_capacity
-- ----------------------------
ALTER TABLE "nacos"."tenant_capacity" ADD CONSTRAINT "PRIMARY_F4CCC2AA" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table tenant_info
-- ----------------------------
CREATE INDEX "idx_tenant_id_ABB71DBA" ON "nacos"."tenant_info" USING btree (
    "tenant_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS FIRST
    );

-- ----------------------------
-- Uniques structure for table tenant_info
-- ----------------------------
ALTER TABLE "nacos"."tenant_info" ADD CONSTRAINT "uk_tenant_info_kptenantid_195888C1" UNIQUE ("kp", "tenant_id");

-- ----------------------------
-- Primary Key structure for table tenant_info
-- ----------------------------
ALTER TABLE "nacos"."tenant_info" ADD CONSTRAINT "PRIMARY_8B91ED1E" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "nacos"."users" ADD CONSTRAINT "PRIMARY_18D00203" PRIMARY KEY ("id");

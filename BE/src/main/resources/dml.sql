INSERT INTO category (NAME, PRODUCT_COUNT) VALUES ('모두가 좋아하는 든든한 메인요리', 3);
INSERT INTO category (NAME, PRODUCT_COUNT) VALUES ('정성이 담긴 뜨끈한 국물요리', 2);
INSERT INTO category (NAME, PRODUCT_COUNT) VALUES ('식탁을 풍성하게 하는 정갈한 밑반찬', 1);

INSERT INTO product (NAME, PRICE, DESCRIPTION, THUMBNAIL_IMAGE_URL, STOCK, CATEGORY_ID) VALUES ('오리 주물럭_반조리', 15800, '감질맛 나는 매콤한 양념', 'https://sidedish-team25.s3.amazonaws.com/thumbnail/img.png', 100, 1);
INSERT INTO product (NAME, PRICE, DESCRIPTION, THUMBNAIL_IMAGE_URL, STOCK, CATEGORY_ID) VALUES ('잡채', 12900, '탱글한 면발과 맛깔진 고명이 가득', 'https://sidedish-team25.s3.amazonaws.com/thumbnail/img-1.png', 200, 1);
INSERT INTO product (NAME, PRICE, DESCRIPTION, THUMBNAIL_IMAGE_URL, STOCK, CATEGORY_ID) VALUES ('소갈비찜', 28900, '촉촉하게 벤 양념이 일품', 'https://sidedish-team25.s3.amazonaws.com/thumbnail/img-2.png', 300, 1);
INSERT INTO product (NAME, PRICE, DESCRIPTION, THUMBNAIL_IMAGE_URL, STOCK, CATEGORY_ID) VALUES ('한돈 돼지 김치찌개', 9300, '김치찌개에는 역시 돼지고기', 'https://sidedish-team25.s3.amazonaws.com/thumbnail/img-3.png', 400, 2);
INSERT INTO product (NAME, PRICE, DESCRIPTION, THUMBNAIL_IMAGE_URL, STOCK, CATEGORY_ID) VALUES ('된장찌개', 8800, '특별하지 않아서 더 좋은 우리맛', 'https://sidedish-team25.s3.amazonaws.com/thumbnail/img-4.png', 500, 2);
INSERT INTO product (NAME, PRICE, DESCRIPTION, THUMBNAIL_IMAGE_URL, STOCK, CATEGORY_ID) VALUES ('미역오이냉국', 7800, '여름엔 시원한 냉국이 최고', 'https://sidedish-team25.s3.amazonaws.com/thumbnail/img-5.png', 600, 2);
INSERT INTO product (NAME, PRICE, DESCRIPTION, THUMBNAIL_IMAGE_URL, STOCK, CATEGORY_ID) VALUES ('새콤달콤 오징어무침', 7500, '국내산 오징어를 새콤달콤하게', 'https://sidedish-team25.s3.amazonaws.com/thumbnail/img-6.png', 700, 3);
INSERT INTO product (NAME, PRICE, DESCRIPTION, THUMBNAIL_IMAGE_URL, STOCK, CATEGORY_ID) VALUES ('호두 멸치볶음', 5800, '잔멸치와 호두가 만나 짭쪼름하지만 고소하게!', 'https://sidedish-team25.s3.amazonaws.com/thumbnail/img-7.png', 800, 3);
INSERT INTO product (NAME, PRICE, DESCRIPTION, THUMBNAIL_IMAGE_URL, STOCK, CATEGORY_ID) VALUES ('한돈 매콤 안심장조림', 6900, '부드러운 한돈 암심살의 매콤함', 'https://sidedish-team25.s3.amazonaws.com/thumbnail/img-8.png', 900, 3);

INSERT INTO delivery (REGION, TYPE) VALUES ('전국', 'NORMAL');
INSERT INTO delivery (REGION, TYPE) VALUES ('서울', 'DAWN');

INSERT INTO event (NAME, DISCOUNT_RATE) VALUES('런칭특가', 0.2);
INSERT INTO event (NAME, DISCOUNT_RATE) VALUES('이벤트특가', 0.1);
INSERT INTO event (NAME, DISCOUNT_RATE) VALUES('한정특가', 0.3);

INSERT INTO product_delivery (PRODUCT_ID, DELIVERY_ID) VALUES (1, 1);
INSERT INTO product_delivery (PRODUCT_ID, DELIVERY_ID) VALUES (1, 2);
INSERT INTO product_delivery (PRODUCT_ID, DELIVERY_ID) VALUES (2, 1);
INSERT INTO product_delivery (PRODUCT_ID, DELIVERY_ID) VALUES (3, 2);
INSERT INTO product_delivery (PRODUCT_ID, DELIVERY_ID) VALUES (4, 2);
INSERT INTO product_delivery (PRODUCT_ID, DELIVERY_ID) VALUES (5, 1);
INSERT INTO product_delivery (PRODUCT_ID, DELIVERY_ID) VALUES (6, 2);
INSERT INTO product_delivery (PRODUCT_ID, DELIVERY_ID) VALUES (7, 1);
INSERT INTO product_delivery (PRODUCT_ID, DELIVERY_ID) VALUES (7, 2);
INSERT INTO product_delivery (PRODUCT_ID, DELIVERY_ID) VALUES (8, 1);
INSERT INTO product_delivery (PRODUCT_ID, DELIVERY_ID) VALUES (9, 1);
INSERT INTO product_delivery (PRODUCT_ID, DELIVERY_ID) VALUES (9, 2);

INSERT INTO product_event (PRODUCT_ID, EVENT_ID) VALUES (1,1);
INSERT INTO product_event (PRODUCT_ID, EVENT_ID) VALUES (1,2);
INSERT INTO product_event (PRODUCT_ID, EVENT_ID) VALUES (2,1);
INSERT INTO product_event (PRODUCT_ID, EVENT_ID) VALUES (3,2);
INSERT INTO product_event (PRODUCT_ID, EVENT_ID) VALUES (5,2);
INSERT INTO product_event (PRODUCT_ID, EVENT_ID) VALUES (6,1);
INSERT INTO product_event (PRODUCT_ID, EVENT_ID) VALUES (8,1);
INSERT INTO product_event (PRODUCT_ID, EVENT_ID) VALUES (9,2);

INSERT INTO image (URL, PRODUCT_ID) VALUES ('https://sidedish-team25.s3.amazonaws.com/detail/img.jpg' ,1);
INSERT INTO image (URL, PRODUCT_ID) VALUES ('https://sidedish-team25.s3.amazonaws.com/detail/img.jpg', 1);
INSERT INTO image (URL, PRODUCT_ID) VALUES ('https://sidedish-team25.s3.amazonaws.com/detail/img-1.jpg' ,2);
INSERT INTO image (URL, PRODUCT_ID) VALUES ('https://sidedish-team25.s3.amazonaws.com/detail/img-1.jpg', 2);
INSERT INTO image (URL, PRODUCT_ID) VALUES ('https://sidedish-team25.s3.amazonaws.com/detail/img-2.jpg' ,3);
INSERT INTO image (URL, PRODUCT_ID) VALUES ('https://sidedish-team25.s3.amazonaws.com/detail/img-2.jpg', 3);
INSERT INTO image (URL, PRODUCT_ID) VALUES ('https://sidedish-team25.s3.amazonaws.com/detail/img-3.jpg' ,4);
INSERT INTO image (URL, PRODUCT_ID) VALUES ('https://sidedish-team25.s3.amazonaws.com/detail/img-3.jpg', 4);
INSERT INTO image (URL, PRODUCT_ID) VALUES ('https://sidedish-team25.s3.amazonaws.com/detail/img-4.jpg' ,5);
INSERT INTO image (URL, PRODUCT_ID) VALUES ('https://sidedish-team25.s3.amazonaws.com/detail/img-4.jpg', 5);
INSERT INTO image (URL, PRODUCT_ID) VALUES ('https://sidedish-team25.s3.amazonaws.com/detail/img-5.jpg' ,6);
INSERT INTO image (URL, PRODUCT_ID) VALUES ('https://sidedish-team25.s3.amazonaws.com/detail/img-5.jpg', 6);
INSERT INTO image (URL, PRODUCT_ID) VALUES ('https://sidedish-team25.s3.amazonaws.com/detail/img-6.jpg' ,7);
INSERT INTO image (URL, PRODUCT_ID) VALUES ('https://sidedish-team25.s3.amazonaws.com/detail/img-6.jpg', 7);
INSERT INTO image (URL, PRODUCT_ID) VALUES ('https://sidedish-team25.s3.amazonaws.com/detail/img-7.jpg' ,8);
INSERT INTO image (URL, PRODUCT_ID) VALUES ('https://sidedish-team25.s3.amazonaws.com/detail/img-7.jpg', 8);
INSERT INTO image (URL, PRODUCT_ID) VALUES ('https://sidedish-team25.s3.amazonaws.com/detail/img-8.jpg' ,9);
INSERT INTO image (URL, PRODUCT_ID) VALUES ('https://sidedish-team25.s3.amazonaws.com/detail/img-8.jpg', 9);

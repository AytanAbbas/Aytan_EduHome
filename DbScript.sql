USE [EduHomeDB]
GO
SET IDENTITY_INSERT [dbo].[BlogCategories] ON 

INSERT [dbo].[BlogCategories] ([Id], [Name]) VALUES (1, N'CSS Engineering ')
INSERT [dbo].[BlogCategories] ([Id], [Name]) VALUES (2, N'Political Science')
INSERT [dbo].[BlogCategories] ([Id], [Name]) VALUES (3, N'Micro Biology')
INSERT [dbo].[BlogCategories] ([Id], [Name]) VALUES (4, N'HTML5 & CSS3')
INSERT [dbo].[BlogCategories] ([Id], [Name]) VALUES (5, N'Web Design ')
INSERT [dbo].[BlogCategories] ([Id], [Name]) VALUES (6, N'PHP')
SET IDENTITY_INSERT [dbo].[BlogCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [Surname], [Email], [Username], [Password], [IsAdmin], [CreatedDate]) VALUES (2, N'Lance', N'Smith', N'Lance@gmail.com', N'lancesmith', N'14264239585', 0, CAST(N'2021-11-10T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([Id], [Title], [Author], [CreatedDate], [Content], [BlogCategoryId], [UserId], [Image]) VALUES (18, N',sla,smjdnskwm', N'ds,olds,powo', CAST(N'2021-12-14T08:09:14.8638190' AS DateTime2), N'sdmspqowopwqp', 1, 2, N'9a3f32c8-98a7-4717-84ef-b80f2017fc9a-20211214080914blog8.jpg')
INSERT [dbo].[Blogs] ([Id], [Title], [Author], [CreatedDate], [Content], [BlogCategoryId], [UserId], [Image]) VALUES (19, N'kdkdkdk', N'dkkdldd;;d', CAST(N'2021-12-14T08:57:53.0130614' AS DateTime2), N'sc,l;S,dvPDAFlv[per', 5, 2, N'ed8ab27d-36dc-477d-b3b8-0972047d5e26-20211214085752-blog-detail.jpg')
INSERT [dbo].[Blogs] ([Id], [Title], [Author], [CreatedDate], [Content], [BlogCategoryId], [UserId], [Image]) VALUES (20, N'l,torgesp5tlg', N',gsrelhy,p', CAST(N'2021-12-14T09:17:55.1590840' AS DateTime2), N'la,sp[[lt]swe[;h e5amsrkswo4rkwo45', 2, 2, N'd7b23657-937d-42dd-930b-3d73658e9eb5-20211214091755-blog9.jpg')
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([Id], [Name]) VALUES (1, N'Course')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (2, N'Education')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (3, N'Teachers')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (4, N'Learning')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (5, N'University')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (6, N'Events')
SET IDENTITY_INSERT [dbo].[Tags] OFF
GO
SET IDENTITY_INSERT [dbo].[TagToBlogs] ON 

INSERT [dbo].[TagToBlogs] ([Id], [BlogId], [TagId]) VALUES (1, 19, 2)
INSERT [dbo].[TagToBlogs] ([Id], [BlogId], [TagId]) VALUES (2, 19, 3)
INSERT [dbo].[TagToBlogs] ([Id], [BlogId], [TagId]) VALUES (3, 19, 5)
INSERT [dbo].[TagToBlogs] ([Id], [BlogId], [TagId]) VALUES (4, 20, 1)
INSERT [dbo].[TagToBlogs] ([Id], [BlogId], [TagId]) VALUES (5, 20, 4)
INSERT [dbo].[TagToBlogs] ([Id], [BlogId], [TagId]) VALUES (6, 20, 6)
SET IDENTITY_INSERT [dbo].[TagToBlogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON 

INSERT [dbo].[Teachers] ([Id], [Fullname], [Profession], [About], [Degree], [Experience], [Faculty], [Email], [Phone], [Skype], [Image]) VALUES (1, N'NULSTUART KELVINL', N'Associate Professor', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium ue laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quas i architeo beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas', N' PHD in Micro Biology', N'7 years experience', N'Din, Department of Micro Biology', N'stuart@eduhome.com', N'(+125) 5896 548 9874', N'stuart.k', N'teacher1.jpg')
INSERT [dbo].[Teachers] ([Id], [Fullname], [Profession], [About], [Degree], [Experience], [Faculty], [Email], [Phone], [Skype], [Image]) VALUES (2, N'EAMILY CRISTIAN', N'Associate Professor', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium ue laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quas i architeo beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas', N' PHD in Micro Biology', N'7 years experience', N'Din, Department of Micro Biology', N'stuart@eduhome.com', N'(+125) 5896 548 9874', N'stuart.k', N'teacher2.jpg')
INSERT [dbo].[Teachers] ([Id], [Fullname], [Profession], [About], [Degree], [Experience], [Faculty], [Email], [Phone], [Skype], [Image]) VALUES (3, N'KEVIN WILLIAMS', N'Associate Professor', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium ue laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quas i architeo beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas', N' PHD in Micro Biology', N'7 years experience', N'Din, Department of Micro Biology', N'stuart@eduhome.com', N'(+125) 5896 548 9874', N'stuart.k', N'teacher3.jpg')
INSERT [dbo].[Teachers] ([Id], [Fullname], [Profession], [About], [Degree], [Experience], [Faculty], [Email], [Phone], [Skype], [Image]) VALUES (4, N'SALINA GOMAZE', N'Associate Professor', N'I must explain to you how all this a mistaken idea of denouncing great explorer of the rut the is lder of human happiness pcias unde omnis iste natus error sit voluptatem accusantium ue laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quas i architeo beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas', N' PHD in Micro Biology', N'7 years experience', N'Din, Department of Micro Biology', N'stuart@eduhome.com', N'(+125) 5896 548 9874', N'stuart.k', N'teacher4.jpg')
SET IDENTITY_INSERT [dbo].[Teachers] OFF
GO
SET IDENTITY_INSERT [dbo].[Hobbies] ON 

INSERT [dbo].[Hobbies] ([Id], [Name], [TeacherId]) VALUES (1, N'music', 1)
INSERT [dbo].[Hobbies] ([Id], [Name], [TeacherId]) VALUES (3, N'travelling', 1)
INSERT [dbo].[Hobbies] ([Id], [Name], [TeacherId]) VALUES (4, N'catching fish', 1)
INSERT [dbo].[Hobbies] ([Id], [Name], [TeacherId]) VALUES (5, N'music', 2)
INSERT [dbo].[Hobbies] ([Id], [Name], [TeacherId]) VALUES (7, N'travelling', 2)
INSERT [dbo].[Hobbies] ([Id], [Name], [TeacherId]) VALUES (8, N'catching fish', 2)
INSERT [dbo].[Hobbies] ([Id], [Name], [TeacherId]) VALUES (9, N'music', 3)
INSERT [dbo].[Hobbies] ([Id], [Name], [TeacherId]) VALUES (10, N'travelling', 3)
INSERT [dbo].[Hobbies] ([Id], [Name], [TeacherId]) VALUES (11, N'catching fish', 3)
INSERT [dbo].[Hobbies] ([Id], [Name], [TeacherId]) VALUES (12, N'music', 4)
INSERT [dbo].[Hobbies] ([Id], [Name], [TeacherId]) VALUES (13, N'travelling', 4)
INSERT [dbo].[Hobbies] ([Id], [Name], [TeacherId]) VALUES (14, N'catching fish', 4)
SET IDENTITY_INSERT [dbo].[Hobbies] OFF
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([Id], [Name], [Percent], [TeacherId]) VALUES (2, N'Language', N'85%', 1)
INSERT [dbo].[Skills] ([Id], [Name], [Percent], [TeacherId]) VALUES (3, N'Team Leader', N'95%', 2)
INSERT [dbo].[Skills] ([Id], [Name], [Percent], [TeacherId]) VALUES (4, N'Development', N'85%', 3)
INSERT [dbo].[Skills] ([Id], [Name], [Percent], [TeacherId]) VALUES (5, N'Innovation', N'95%', 4)
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
SET IDENTITY_INSERT [dbo].[TeacherAccounts] ON 

INSERT [dbo].[TeacherAccounts] ([Id], [Name], [Icon], [Link], [TeacherId]) VALUES (2, N'facebook', N'fab fa-facebook f', N'<script src="https://kit.fontawesome.com/85735e67ff.js" crossorigin="anonymous"></script>', 1)
INSERT [dbo].[TeacherAccounts] ([Id], [Name], [Icon], [Link], [TeacherId]) VALUES (3, N'pinterest', N'fab fa-pinterest', N'<script src="https://kit.fontawesome.com/85735e67ff.js" crossorigin="anonymous"></script>', 1)
INSERT [dbo].[TeacherAccounts] ([Id], [Name], [Icon], [Link], [TeacherId]) VALUES (4, N'vimeo', N'fab fa-vimeo-v', N'<script src="https://kit.fontawesome.com/85735e67ff.js" crossorigin="anonymous"></script>', 1)
INSERT [dbo].[TeacherAccounts] ([Id], [Name], [Icon], [Link], [TeacherId]) VALUES (5, N'twitter', N'fab fa-twitter', N'<script src="https://kit.fontawesome.com/85735e67ff.js" crossorigin="anonymous"></script>', 1)
SET IDENTITY_INSERT [dbo].[TeacherAccounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Abouts] ON 

INSERT [dbo].[Abouts] ([Id], [Title], [Video]) VALUES (1, N'TAKE A VIDEO TOUR', N'video.jpg')
SET IDENTITY_INSERT [dbo].[Abouts] OFF
GO
SET IDENTITY_INSERT [dbo].[Banners] ON 

INSERT [dbo].[Banners] ([Id], [Title], [Page]) VALUES (1, N'ABOUT US', N'about')
INSERT [dbo].[Banners] ([Id], [Title], [Page]) VALUES (2, N'COURSES', N'course')
INSERT [dbo].[Banners] ([Id], [Title], [Page]) VALUES (3, N'EVENT / DETAILS', N'event details')
INSERT [dbo].[Banners] ([Id], [Title], [Page]) VALUES (4, N'OUR TEACHERS', N'teacher')
INSERT [dbo].[Banners] ([Id], [Title], [Page]) VALUES (5, N'Contact', N'contact')
SET IDENTITY_INSERT [dbo].[Banners] OFF
GO
SET IDENTITY_INSERT [dbo].[Boards] ON 

INSERT [dbo].[Boards] ([Id], [Content], [CreatedDate]) VALUES (1, N'I must explain to you how all this mistaken idea of denouncing plasure and praising pain was born and I will give you a complete', CAST(N'2017-06-05T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Boards] ([Id], [Content], [CreatedDate]) VALUES (3, N'I must explain to you how all this mistaken idea of denouncing plasure and praising pain was born and I will give you a complete', CAST(N'2017-06-04T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Boards] ([Id], [Content], [CreatedDate]) VALUES (4, N'I must explain to you how all this mistaken idea of denouncing plasure and praising pain was born and I will give you a complete', CAST(N'2017-06-03T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Boards] OFF
GO
SET IDENTITY_INSERT [dbo].[Eduhomes] ON 

INSERT [dbo].[Eduhomes] ([Id], [Title], [Content], [Image]) VALUES (1, N'WELCOME TO EDUHOME', N'I must explain to you how all this mistaken idea of denouncing pleure and prsing pain was born and I will give you a complete account of the system, and expound the actual teachings the master-builder of humanit happiness

I must explain to you how all this mistaken idea of denouncing pleure and prsing pain was born and I will give you a complete account of the system', N'about.png')
SET IDENTITY_INSERT [dbo].[Eduhomes] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedbacks] ON 

INSERT [dbo].[Feedbacks] ([Id], [Image], [Content], [Fullname], [Position], [CreatedDate]) VALUES (4, N'testimonial.jpg', N'I must explain to you how all this mistaken idea of denoung pleure and praising pain was born and I will give you a coete account of the system, and expound the actual', N'David Morgan', N'Student, CSE', CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedbacks] ([Id], [Image], [Content], [Fullname], [Position], [CreatedDate]) VALUES (10, N'testimonial.jpg', N'I must explain to you how all this mistaken idea of denoung pleure and praising pain was born and I will give you a coete account of the system, and expound the actuall', N'David Morgan', N'Student, CSE', CAST(N'2021-10-10T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Feedbacks] ([Id], [Image], [Content], [Fullname], [Position], [CreatedDate]) VALUES (12, N'testimonial.jpg', N'I must explain to you how all this mistaken idea of denoung pleure and praising pain was born and I will give you a coete account of the system, and expound the actual', N'David Morgan', N'Student, CSE', CAST(N'2021-11-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Feedbacks] OFF
GO
SET IDENTITY_INSERT [dbo].[Informations] ON 

INSERT [dbo].[Informations] ([Id], [Name]) VALUES (1, N'Addmission')
INSERT [dbo].[Informations] ([Id], [Name]) VALUES (2, N'Academic Calender')
INSERT [dbo].[Informations] ([Id], [Name]) VALUES (3, N'Event List')
INSERT [dbo].[Informations] ([Id], [Name]) VALUES (4, N'Hostel & Dinning')
INSERT [dbo].[Informations] ([Id], [Name]) VALUES (5, N'TimeTable
')
SET IDENTITY_INSERT [dbo].[Informations] OFF
GO
SET IDENTITY_INSERT [dbo].[Links] ON 

INSERT [dbo].[Links] ([Id], [Name]) VALUES (1, N'Our Courses')
INSERT [dbo].[Links] ([Id], [Name]) VALUES (2, N'About Us')
INSERT [dbo].[Links] ([Id], [Name]) VALUES (3, N'Teachers & Faculty')
INSERT [dbo].[Links] ([Id], [Name]) VALUES (4, N'Teams & Conditions')
INSERT [dbo].[Links] ([Id], [Name]) VALUES (5, N'Our Events')
SET IDENTITY_INSERT [dbo].[Links] OFF
GO
SET IDENTITY_INSERT [dbo].[Settings] ON 

INSERT [dbo].[Settings] ([Id], [Logo], [Phone1], [Phone2], [Phone3], [Address], [Email1], [Email2], [Content]) VALUES (1, N'logo2.png', N'+880 5698 598 6587', N'+880 548 986 898 87', N'+880 659 785 658 98', N' Street
City, Roadno 785 New York', N'info@eduhome.com', N'www.eduhome.com', N'I must explain to you how all this mistaken idea of denoung pleure and praising pain was born and give you a coete account of the system.')
SET IDENTITY_INSERT [dbo].[Settings] OFF
GO
SET IDENTITY_INSERT [dbo].[Socials] ON 

INSERT [dbo].[Socials] ([Id], [Name], [Icon], [Link]) VALUES (1, N'facebook', N'fab fa-facebook f', NULL)
INSERT [dbo].[Socials] ([Id], [Name], [Icon], [Link]) VALUES (2, N'pinterest', N'fab fa-pinterest', NULL)
INSERT [dbo].[Socials] ([Id], [Name], [Icon], [Link]) VALUES (3, N'vimeo', N'fab fa-vimeo-v', NULL)
INSERT [dbo].[Socials] ([Id], [Name], [Icon], [Link]) VALUES (4, N'twitter', N'fab fa-twitter', NULL)
SET IDENTITY_INSERT [dbo].[Socials] OFF
GO

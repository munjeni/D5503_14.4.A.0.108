.class Lcom/android/phone/NotificationMgr$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "NotificationMgr.java"

# interfaces
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method public constructor <init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    .line 392
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 393
    return-void
.end method

.method private final getNotificationInfo(Landroid/database/Cursor;)Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 562
    new-instance v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;-><init>(Lcom/android/phone/NotificationMgr$QueryHandler;Lcom/android/phone/NotificationMgr$1;)V

    .line 563
    .local v0, "n":Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    iput-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    .line 564
    const-string v1, "number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    .line 565
    const-string v1, "presentation"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->presentation:I

    .line 566
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->type:Ljava/lang/String;

    .line 567
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    .line 573
    iget v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->presentation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 574
    iput-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    .line 577
    :cond_0
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationInfo constructed for number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 579
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected doOnQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 442
    packed-switch p1, :pswitch_data_0

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 444
    :pswitch_0
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v2, "call log query complete."

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 447
    :cond_1
    if-eqz p3, :cond_0

    .line 448
    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr$QueryHandler;->getNotificationInfo(Landroid/database/Cursor;)Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    move-result-object v3

    .line 453
    .local v3, "n":Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query contacts for number: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 455
    :cond_2
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$300(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;

    move-result-object v1

    const/4 v2, -0x2

    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v5, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "number"

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 462
    .end local v3    # "n":Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    :pswitch_1
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v2, "contact query complete."

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 465
    :cond_3
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v3, p2

    .line 466
    check-cast v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    .line 468
    .restart local v3    # "n":Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    const/4 v12, 0x0

    .line 469
    .local v12, "personUri":Landroid/net/Uri;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 470
    const-string v1, "display_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    .line 472
    const-string v1, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 474
    .local v13, "person_id":J
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_4

    .line 475
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " found for phone: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". id : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 478
    :cond_4
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 481
    .end local v13    # "person_id":J
    :cond_5
    if-eqz v12, :cond_7

    .line 482
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_6

    .line 483
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start obtaining picture for the missed call. Uri: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 489
    :cond_6
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$400(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v12, p0, v3}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 492
    :cond_7
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_8

    .line 493
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v2, "Failed to find Uri for obtaining photo. Just send notification without it."

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 498
    :cond_8
    iget-object v4, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v5, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->type:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v10, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    invoke-virtual/range {v4 .. v11}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    goto/16 :goto_0

    .line 504
    .end local v3    # "n":Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    .end local v12    # "personUri":Landroid/net/Uri;
    :pswitch_2
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v2, "answering machine new query complete."

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 506
    :cond_9
    if-eqz p3, :cond_b

    .line 507
    :goto_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr$QueryHandler;->getNotificationInfo(Landroid/database/Cursor;)Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    move-result-object v3

    .line 512
    .restart local v3    # "n":Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query contacts for number: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 514
    :cond_a
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$300(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;

    move-result-object v1

    const/4 v2, -0x4

    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v5, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "number"

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 519
    .end local v3    # "n":Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    :cond_b
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v2, "answering machine new query failed."

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 524
    :pswitch_3
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v2, "answering machine contact query complete."

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 527
    :cond_c
    if-eqz p3, :cond_e

    if-eqz p2, :cond_e

    move-object/from16 v3, p2

    .line 528
    check-cast v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    .line 530
    .restart local v3    # "n":Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 531
    const-string v1, "display_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    .line 533
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_d

    .line 534
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " found for phone: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 539
    :cond_d
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v2, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    iget-object v4, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    iget-wide v5, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/android/phone/NotificationMgr;->notifyAnsweringMachine(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 541
    .end local v3    # "n":Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    :cond_e
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v2, "answering machine contact query failed."

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 442
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p3, "photoIcon"    # Landroid/graphics/Bitmap;
    .param p4, "cookie"    # Ljava/lang/Object;
    .param p5, "resultIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 552
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished loading image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    :cond_0
    move-object v8, p4

    .line 553
    check-cast v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    .line 554
    .local v8, "n":Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v1, v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->type:Ljava/lang/String;

    iget-wide v6, v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    .line 555
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, -0x2

    const/4 v6, -0x4

    const/4 v5, -0x1

    const/4 v4, -0x3

    .line 401
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/phone/NotificationMgr$QueryHandler;->doOnQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    if-eq p1, v5, :cond_0

    if-ne p1, v7, :cond_16

    .line 408
    :cond_0
    if-eqz p3, :cond_2

    .line 409
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    .line 410
    iget-object v2, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    if-ne p1, v5, :cond_18

    const-string v1, "closing call log cursor."

    :goto_0
    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 413
    :cond_1
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 425
    :cond_2
    :goto_2
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_1
    const-string v1, "NotificationMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed onQueryComplete() SQLiteDiskIOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    if-eq p1, v5, :cond_3

    if-ne p1, v7, :cond_d

    .line 408
    :cond_3
    if-eqz p3, :cond_2

    .line 409
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    .line 410
    iget-object v2, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    if-ne p1, v5, :cond_10

    const-string v1, "closing call log cursor."

    :goto_3
    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    goto :goto_1

    .line 404
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v0

    .line 405
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v1, "NotificationMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed onQueryComplete() SQLiteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 407
    if-eq p1, v5, :cond_4

    if-ne p1, v7, :cond_12

    .line 408
    :cond_4
    if-eqz p3, :cond_2

    .line 409
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    .line 410
    iget-object v2, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    if-ne p1, v5, :cond_14

    const-string v1, "closing call log cursor."

    :goto_4
    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    goto :goto_1

    .line 407
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eq p1, v5, :cond_5

    if-ne p1, v7, :cond_8

    .line 408
    :cond_5
    if-eqz p3, :cond_7

    .line 409
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_6

    .line 410
    iget-object v3, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    if-ne p1, v5, :cond_b

    const-string v2, "closing call log cursor."

    :goto_5
    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 413
    :cond_6
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 407
    :cond_7
    :goto_6
    throw v1

    .line 415
    :cond_8
    if-eq p1, v4, :cond_9

    if-ne p1, v6, :cond_7

    .line 416
    :cond_9
    if-eqz p3, :cond_7

    .line 417
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_a

    .line 418
    iget-object v3, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    if-ne p1, v4, :cond_c

    const-string v2, "closing am new cursor."

    :goto_7
    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 421
    :cond_a
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 410
    :cond_b
    const-string v2, "closing contact cursor."

    goto :goto_5

    .line 418
    :cond_c
    const-string v2, "closing am contact cursor."

    goto :goto_7

    .line 415
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :cond_d
    if-eq p1, v4, :cond_e

    if-ne p1, v6, :cond_2

    .line 416
    :cond_e
    if-eqz p3, :cond_2

    .line 417
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_f

    .line 418
    iget-object v2, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    if-ne p1, v4, :cond_11

    const-string v1, "closing am new cursor."

    :goto_8
    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 421
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :cond_f
    :goto_9
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 410
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :cond_10
    const-string v1, "closing contact cursor."

    goto/16 :goto_3

    .line 418
    :cond_11
    const-string v1, "closing am contact cursor."

    goto :goto_8

    .line 415
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :cond_12
    if-eq p1, v4, :cond_13

    if-ne p1, v6, :cond_2

    .line 416
    :cond_13
    if-eqz p3, :cond_2

    .line 417
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_f

    .line 418
    iget-object v2, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    if-ne p1, v4, :cond_15

    const-string v1, "closing am new cursor."

    :goto_a
    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    goto :goto_9

    .line 410
    :cond_14
    const-string v1, "closing contact cursor."

    goto :goto_4

    .line 418
    :cond_15
    const-string v1, "closing am contact cursor."

    goto :goto_a

    .line 415
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_16
    if-eq p1, v4, :cond_17

    if-ne p1, v6, :cond_2

    .line 416
    :cond_17
    if-eqz p3, :cond_2

    .line 417
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_f

    .line 418
    iget-object v2, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    if-ne p1, v4, :cond_19

    const-string v1, "closing am new cursor."

    :goto_b
    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    goto :goto_9

    .line 410
    :cond_18
    const-string v1, "closing contact cursor."

    goto/16 :goto_0

    .line 418
    :cond_19
    const-string v1, "closing am contact cursor."

    goto :goto_b
.end method

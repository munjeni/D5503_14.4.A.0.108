.class public Lcom/android/phone/CalendarRejectMsgProvider;
.super Ljava/lang/Object;
.source "CalendarRejectMsgProvider.java"

# interfaces
.implements Lcom/android/phone/ContextualRejectMsgProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;
    }
.end annotation


# static fields
.field private static final COLS_ATT:[Ljava/lang/String;

.field private static final COLS_INST:[Ljava/lang/String;


# instance fields
.field private mCalendarIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mContextualRejectMsgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ContextualRejectMsg;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "event_id"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "begin"

    aput-object v1, v0, v4

    const-string v1, "end"

    aput-object v1, v0, v5

    const-string v1, "allDay"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/phone/CalendarRejectMsgProvider;->COLS_INST:[Ljava/lang/String;

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "attendeeName"

    aput-object v1, v0, v2

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v3

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v4

    const-string v1, "attendeeType"

    aput-object v1, v0, v5

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/phone/CalendarRejectMsgProvider;->COLS_ATT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mContextualRejectMsgList:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mEmailList:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mCalendarIDList:Ljava/util/ArrayList;

    .line 79
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CalendarRejectMsgProvider"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method private calcAttendenceProbability(J)Lcom/android/phone/ContextualRejectMsg$Probability;
    .locals 13
    .param p1, "eventID"    # J

    .prologue
    .line 326
    sget-object v5, Lcom/android/phone/ContextualRejectMsg$Probability;->LOW:Lcom/android/phone/ContextualRejectMsg$Probability;

    .line 328
    .local v5, "probability":Lcom/android/phone/ContextualRejectMsg$Probability;
    iget-object v10, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/android/phone/CalendarRejectMsgProvider;->COLS_ATT:[Ljava/lang/String;

    invoke-static {v10, p1, p2, v11}, Landroid/provider/CalendarContract$Attendees;->query(Landroid/content/ContentResolver;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 330
    .local v0, "attCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 331
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 334
    :cond_0
    const/4 v10, 0x0

    :try_start_0
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 335
    .local v4, "name":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "email":Ljava/lang/String;
    const/4 v10, 0x2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 337
    .local v6, "relationship":I
    const/4 v10, 0x3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 338
    .local v9, "type":I
    const/4 v10, 0x4

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 340
    .local v8, "status":I
    const/4 v10, 0x2

    if-ne v6, v10, :cond_4

    .line 341
    sget-object v5, Lcom/android/phone/ContextualRejectMsg$Probability;->CERTAIN:Lcom/android/phone/ContextualRejectMsg$Probability;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v2    # "email":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "relationship":I
    .end local v8    # "status":I
    .end local v9    # "type":I
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 373
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 375
    :cond_3
    return-object v5

    .line 344
    .restart local v2    # "email":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "relationship":I
    .restart local v8    # "status":I
    .restart local v9    # "type":I
    :cond_4
    :try_start_1
    iget-object v10, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 345
    .local v7, "s":Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 346
    packed-switch v8, :pswitch_data_0

    goto :goto_1

    .line 358
    :pswitch_0
    sget-object v5, Lcom/android/phone/ContextualRejectMsg$Probability;->MEDIUM:Lcom/android/phone/ContextualRejectMsg$Probability;

    .line 359
    goto :goto_1

    .line 348
    :pswitch_1
    sget-object v5, Lcom/android/phone/ContextualRejectMsg$Probability;->HIGH:Lcom/android/phone/ContextualRejectMsg$Probability;

    .line 349
    goto :goto_1

    .line 352
    :pswitch_2
    sget-object v5, Lcom/android/phone/ContextualRejectMsg$Probability;->LOW:Lcom/android/phone/ContextualRejectMsg$Probability;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 353
    goto :goto_1

    .line 368
    .end local v2    # "email":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "relationship":I
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "status":I
    .end local v9    # "type":I
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "CalendarRejectMsgProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Attendees.query Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkEventCalendarID(J)Z
    .locals 11
    .param p1, "eventID"    # J

    .prologue
    const/4 v2, 0x0

    .line 156
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CalendarRejectMsgProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkEventCalendarID eventID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    const/4 v10, 0x0

    .line 159
    .local v10, "match":Z
    iget-object v1, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 163
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_7

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 166
    :cond_1
    const-string v1, "calendar_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 168
    .local v7, "calendarID":I
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_2

    const-string v1, "CalendarRejectMsgProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkEventCalendarID eventID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " calendarID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mCalendarIDList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 172
    .local v9, "id":I
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_4

    .line 173
    const-string v1, "CalendarRejectMsgProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkEventCalendarID listID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " calendarID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_4
    if-ne v9, v7, :cond_3

    .line 177
    const/4 v10, 0x1

    .line 181
    .end local v9    # "id":I
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    .end local v7    # "calendarID":I
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_7
    return v10
.end method

.method private handleConsecutiveEvents(Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;Ljava/util/LinkedHashSet;J)Z
    .locals 5
    .param p1, "currentEvent"    # Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;
    .param p2, "prevEvent"    # Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;
    .param p3, "hashSet"    # Ljava/util/LinkedHashSet;
    .param p4, "currTime"    # J

    .prologue
    const/4 v0, 0x1

    .line 299
    if-nez p2, :cond_1

    .line 300
    iget-wide v1, p1, Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;->startTimestamp:J

    cmp-long v1, v1, p4

    if-gtz v1, :cond_0

    iget-wide v1, p1, Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;->endTimestamp:J

    cmp-long v1, v1, p4

    if-ltz v1, :cond_0

    iget-boolean v1, p1, Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;->allDay:Z

    if-nez v1, :cond_0

    .line 302
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 317
    :goto_0
    return v0

    .line 304
    :cond_0
    iget-boolean v1, p1, Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;->allDay:Z

    if-eqz v1, :cond_2

    .line 305
    invoke-virtual {p3}, Ljava/util/HashSet;->clear()V

    .line 306
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    :cond_1
    iget-boolean v1, p2, Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;->allDay:Z

    if-nez v1, :cond_2

    .line 310
    iget-wide v1, p2, Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;->endTimestamp:J

    iget-wide v3, p1, Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;->startTimestamp:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    iget-boolean v1, p1, Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;->allDay:Z

    if-nez v1, :cond_2

    .line 311
    invoke-virtual {p3, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 312
    iget-wide v1, p2, Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;->startTimestamp:J

    iput-wide v1, p1, Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;->startTimestamp:J

    .line 313
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 317
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAccountEmails()V
    .locals 10

    .prologue
    .line 101
    sget-boolean v7, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v7, :cond_0

    const-string v7, "CalendarRejectMsgProvider"

    const-string v8, "loadAccountEmails"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-object v7, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 103
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 104
    .local v3, "emailPattern":Ljava/util/regex/Pattern;
    iget-object v7, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 105
    .local v1, "accounts":[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, v2, v4

    .line 106
    .local v0, "account":Landroid/accounts/Account;
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 107
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 108
    .local v6, "possibleEmail":Ljava/lang/String;
    sget-boolean v7, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v7, :cond_1

    const-string v7, "CalendarRejectMsgProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadAccountEmails: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    iget-object v7, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v6    # "possibleEmail":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_3
    return-void
.end method

.method private loadCalendarsIDs()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 119
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CalendarRejectMsgProvider"

    const-string v3, "loadCalendarsIDs"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mCalendarIDList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object v1, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 125
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 126
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_7

    .line 127
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 129
    :cond_1
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 131
    .local v8, "calendarID":I
    const-string v1, "ownerAccount"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, "accountOwner":Ljava/lang/String;
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_2

    const-string v1, "CalendarRejectMsgProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadCalendarsIDs _ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_3

    .line 136
    const-string v1, "CalendarRejectMsgProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadCalendarsIDs OWNER_ACCOUNT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 140
    .local v10, "s":Ljava/lang/String;
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 141
    iget-object v1, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mCalendarIDList:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    .end local v10    # "s":Ljava/lang/String;
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    .end local v6    # "accountOwner":Ljava/lang/String;
    .end local v8    # "calendarID":I
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_7
    return-void
.end method

.method private readCalendarInstances()V
    .locals 35

    .prologue
    .line 193
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_0

    const-string v4, "CalendarRejectMsgProvider"

    const-string v7, "readCalendarInstances"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CalendarRejectMsgProvider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v16

    .line 196
    .local v16, "df":Ljava/text/Format;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CalendarRejectMsgProvider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v32

    .line 198
    .local v32, "tf":Ljava/text/Format;
    new-instance v23, Ljava/util/LinkedHashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedHashSet;-><init>()V

    .line 200
    .local v23, "mContextualRejectMsgListDefault":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;>;"
    new-instance v10, Ljava/util/LinkedHashSet;

    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    .line 203
    .local v10, "mContextualRejectMsgListSecondary":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 204
    .local v3, "c":Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v7, 0x5

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 206
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    .line 207
    .local v28, "queryStartTime":J
    const/4 v4, 0x5

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v7}, Ljava/util/Calendar;->add(II)V

    .line 208
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    .line 210
    .local v26, "queryEndTime":J
    sget-object v4, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    .line 211
    .local v14, "builder":Landroid/net/Uri$Builder;
    move-wide/from16 v0, v28

    invoke-static {v14, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 212
    move-wide/from16 v0, v26

    invoke-static {v14, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 213
    const/4 v4, 0x5

    const/4 v7, -0x1

    invoke-virtual {v3, v4, v7}, Ljava/util/Calendar;->add(II)V

    .line 214
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 217
    .local v11, "currTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CalendarRejectMsgProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CalendarRejectMsgProvider;->COLS_INST:[Ljava/lang/String;

    const-string v7, "visible =? AND (dtend <= ? OR allDay=1 )"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v34, "1"

    aput-object v34, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v8, v9

    const-string v9, "end ASC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 222
    .local v22, "instCursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 223
    .local v6, "contextualRejectMsgDefaultPrev":Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;
    const/4 v15, 0x0

    .line 224
    .local v15, "contextualRejectMsgSecondaryPrev":Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;
    if-eqz v22, :cond_5

    .line 225
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_4

    .line 228
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 229
    .local v20, "eventID":J
    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 230
    .local v33, "title":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 231
    .local v30, "startTime":J
    const/4 v4, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 232
    .local v18, "endTime":J
    const/4 v4, 0x4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_7

    const/4 v13, 0x1

    .line 233
    .local v13, "allDay":Z
    :goto_0
    const-wide/32 v7, 0xea60

    rem-long v7, v30, v7

    sub-long v30, v30, v7

    .line 234
    const-wide/32 v7, 0xea60

    rem-long v7, v18, v7

    sub-long v18, v18, v7

    .line 235
    const/4 v5, 0x0

    .line 238
    .local v5, "contextualRejectMsg":Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;
    if-nez v13, :cond_8

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CalendarRejectMsgProvider;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0111

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 243
    .local v24, "msg":Ljava/lang/String;
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_2

    const-string v4, "CalendarRejectMsgProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " endTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CalendarRejectMsgProvider;->calcAttendenceProbability(J)Lcom/android/phone/ContextualRejectMsg$Probability;

    move-result-object v25

    .line 255
    .local v25, "probability":Lcom/android/phone/ContextualRejectMsg$Probability;
    new-instance v5, Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;

    .end local v5    # "contextualRejectMsg":Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;
    const v4, 0x7f0200fb

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v5, v0, v1, v4}, Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;-><init>(Ljava/lang/String;Lcom/android/phone/ContextualRejectMsg$Probability;I)V

    .line 257
    .restart local v5    # "contextualRejectMsg":Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;
    move-wide/from16 v0, v30

    iput-wide v0, v5, Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;->startTimestamp:J

    .line 258
    move-wide/from16 v0, v18

    iput-wide v0, v5, Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;->endTimestamp:J

    .line 259
    iput-boolean v13, v5, Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;->allDay:Z

    .line 261
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CalendarRejectMsgProvider;->checkEventCalendarID(J)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v4, p0

    move-object/from16 v7, v23

    move-wide v8, v11

    .line 262
    invoke-direct/range {v4 .. v9}, Lcom/android/phone/CalendarRejectMsgProvider;->handleConsecutiveEvents(Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;Ljava/util/LinkedHashSet;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    .line 266
    move-object v6, v5

    .line 279
    .end local v5    # "contextualRejectMsg":Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;
    .end local v13    # "allDay":Z
    .end local v18    # "endTime":J
    .end local v20    # "eventID":J
    .end local v24    # "msg":Ljava/lang/String;
    .end local v25    # "probability":Lcom/android/phone/ContextualRejectMsg$Probability;
    .end local v30    # "startTime":J
    .end local v33    # "title":Ljava/lang/String;
    :cond_3
    :goto_2
    :try_start_2
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 281
    :cond_4
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 285
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_6

    const-string v4, "CalendarRejectMsgProvider"

    const-string v7, "DEFAULT Calendar events used"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CalendarRejectMsgProvider;->mContextualRejectMsgList:Ljava/util/List;

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 295
    .end local v3    # "c":Ljava/util/Calendar;
    .end local v6    # "contextualRejectMsgDefaultPrev":Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;
    .end local v10    # "mContextualRejectMsgListSecondary":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;>;"
    .end local v11    # "currTime":J
    .end local v14    # "builder":Landroid/net/Uri$Builder;
    .end local v15    # "contextualRejectMsgSecondaryPrev":Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;
    .end local v16    # "df":Ljava/text/Format;
    .end local v22    # "instCursor":Landroid/database/Cursor;
    .end local v23    # "mContextualRejectMsgListDefault":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;>;"
    .end local v26    # "queryEndTime":J
    .end local v28    # "queryStartTime":J
    .end local v32    # "tf":Ljava/text/Format;
    :goto_3
    return-void

    .line 232
    .restart local v3    # "c":Ljava/util/Calendar;
    .restart local v6    # "contextualRejectMsgDefaultPrev":Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;
    .restart local v10    # "mContextualRejectMsgListSecondary":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;>;"
    .restart local v11    # "currTime":J
    .restart local v14    # "builder":Landroid/net/Uri$Builder;
    .restart local v15    # "contextualRejectMsgSecondaryPrev":Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;
    .restart local v16    # "df":Ljava/text/Format;
    .restart local v18    # "endTime":J
    .restart local v20    # "eventID":J
    .restart local v22    # "instCursor":Landroid/database/Cursor;
    .restart local v23    # "mContextualRejectMsgListDefault":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;>;"
    .restart local v26    # "queryEndTime":J
    .restart local v28    # "queryStartTime":J
    .restart local v30    # "startTime":J
    .restart local v32    # "tf":Ljava/text/Format;
    .restart local v33    # "title":Ljava/lang/String;
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 247
    .restart local v5    # "contextualRejectMsg":Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;
    .restart local v13    # "allDay":Z
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CalendarRejectMsgProvider;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0112

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "msg":Ljava/lang/String;
    goto :goto_1

    .restart local v25    # "probability":Lcom/android/phone/ContextualRejectMsg$Probability;
    :cond_9
    move-object/from16 v7, p0

    move-object v8, v5

    move-object v9, v15

    .line 268
    invoke-direct/range {v7 .. v12}, Lcom/android/phone/CalendarRejectMsgProvider;->handleConsecutiveEvents(Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;Ljava/util/LinkedHashSet;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    .line 272
    move-object v15, v5

    goto :goto_2

    .line 275
    .end local v5    # "contextualRejectMsg":Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;
    .end local v13    # "allDay":Z
    .end local v18    # "endTime":J
    .end local v20    # "eventID":J
    .end local v24    # "msg":Ljava/lang/String;
    .end local v25    # "probability":Lcom/android/phone/ContextualRejectMsg$Probability;
    .end local v30    # "startTime":J
    .end local v33    # "title":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 276
    .local v17, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v4, "CalendarRejectMsgProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "e1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 291
    .end local v3    # "c":Ljava/util/Calendar;
    .end local v6    # "contextualRejectMsgDefaultPrev":Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;
    .end local v10    # "mContextualRejectMsgListSecondary":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;>;"
    .end local v11    # "currTime":J
    .end local v14    # "builder":Landroid/net/Uri$Builder;
    .end local v15    # "contextualRejectMsgSecondaryPrev":Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;
    .end local v16    # "df":Ljava/text/Format;
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v22    # "instCursor":Landroid/database/Cursor;
    .end local v23    # "mContextualRejectMsgListDefault":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;>;"
    .end local v26    # "queryEndTime":J
    .end local v28    # "queryStartTime":J
    .end local v32    # "tf":Ljava/text/Format;
    :catch_1
    move-exception v17

    .line 292
    .restart local v17    # "e":Ljava/lang/Exception;
    const-string v4, "CalendarRejectMsgProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instances.query Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 288
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v3    # "c":Ljava/util/Calendar;
    .restart local v6    # "contextualRejectMsgDefaultPrev":Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;
    .restart local v10    # "mContextualRejectMsgListSecondary":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;>;"
    .restart local v11    # "currTime":J
    .restart local v14    # "builder":Landroid/net/Uri$Builder;
    .restart local v15    # "contextualRejectMsgSecondaryPrev":Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;
    .restart local v16    # "df":Ljava/text/Format;
    .restart local v22    # "instCursor":Landroid/database/Cursor;
    .restart local v23    # "mContextualRejectMsgListDefault":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/phone/CalendarRejectMsgProvider$CalendarContextualRejectMsg;>;"
    .restart local v26    # "queryEndTime":J
    .restart local v28    # "queryStartTime":J
    .restart local v32    # "tf":Ljava/text/Format;
    :cond_a
    :try_start_5
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_b

    const-string v4, "CalendarRejectMsgProvider"

    const-string v7, "SECONDARY Calendar events used"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CalendarRejectMsgProvider;->mContextualRejectMsgList:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3
.end method


# virtual methods
.method public declared-synchronized getMessages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ContextualRejectMsg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/CalendarRejectMsgProvider;->loadAccountEmails()V

    .line 90
    invoke-direct {p0}, Lcom/android/phone/CalendarRejectMsgProvider;->loadCalendarsIDs()V

    .line 91
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CalendarRejectMsgProvider"

    const-string v1, "getMessages"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mContextualRejectMsgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    invoke-direct {p0}, Lcom/android/phone/CalendarRejectMsgProvider;->readCalendarInstances()V

    .line 94
    iget-object v0, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mContextualRejectMsgList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

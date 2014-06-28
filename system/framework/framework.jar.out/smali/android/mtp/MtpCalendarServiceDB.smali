.class Landroid/mtp/MtpCalendarServiceDB;
.super Landroid/mtp/MtpServiceDatabase;
.source "MtpCalendarServiceDB.java"


# static fields
.field private static final ACCOUNT_TYPE_WHERE:Ljava/lang/String; = "account_type= ?"

.field private static final CALENDAR_ID_SELECTION:Ljava/lang/String; = "calendar_id=?"

.field private static final DEFAULT_ACCESS_LEVEL:I = 0x1388

.field private static final DEFAULT_ACCOUNT_NAME:Ljava/lang/String; = "SYNCML-ORPHANED"

.field private static final DEFAULT_ACCOUNT_TYPE:Ljava/lang/String; = "LOCAL"

.field private static final DEFAULT_CALENDAR_COLOR:I = -0xc6a56d

.field private static final DEFAULT_DURATION_PATTERN:Ljava/lang/String; = "P30M"

.field private static final DEFAULT_HAS_ATTENDEE_DATA:I = 0x1

.field private static final DEFAULT_NAME:Ljava/lang/String; = "Phone calendar"

.field private static final DEFAULT_SELF_ATTENDEE_STATUS:I = 0x1

.field private static final DELETED_SELECTION:Ljava/lang/String; = "calendar_id=? AND deleted!=0"

.field private static final DIRTY_OR_DELETED_SELECTION:Ljava/lang/String; = "calendar_id=? AND (dirty!=0 OR deleted!=0)"

.field private static final EVENT_ID_WHERE:Ljava/lang/String; = "event_id = ?"

.field private static final EVENT_ORIGINAL_ID_STATUS_WHERE:Ljava/lang/String; = "original_id = ? AND eventStatus = ?"

.field private static final EVENT_ORIGINAL_ID_WHERE:Ljava/lang/String; = "original_id = ?"

.field private static final ID_ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final ID_DIRTY_DELETED_PROJECTION:[Ljava/lang/String;

.field private static final NON_DELETED_CALENDAR_ID_WHERE:Ljava/lang/String; = "deleted = 0 AND IFNULL(eventStatus,0) <> 2 AND calendar_id = ?"

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountSelectionArgs:[Ljava/lang/String;

.field private mCalendarId:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "account_name"

    aput-object v1, v0, v3

    const-string v1, "account_type"

    aput-object v1, v0, v4

    sput-object v0, Landroid/mtp/MtpCalendarServiceDB;->ID_ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 34
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "minutes"

    aput-object v1, v0, v3

    sput-object v0, Landroid/mtp/MtpCalendarServiceDB;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 44
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "dirty"

    aput-object v1, v0, v3

    const-string v1, "deleted"

    aput-object v1, v0, v4

    sput-object v0, Landroid/mtp/MtpCalendarServiceDB;->ID_DIRTY_DELETED_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/mtp/MtpDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "database"    # Landroid/mtp/MtpDatabase;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpServiceDatabase;-><init>(Landroid/content/Context;Landroid/mtp/MtpDatabase;)V

    .line 70
    invoke-direct {p0}, Landroid/mtp/MtpCalendarServiceDB;->getDefaultCalendarID()Z

    .line 71
    return-void
.end method

.method private addAlarmInfo(IILandroid/database/Cursor;Landroid/mtp/MtpPropertyList;)V
    .locals 9
    .param p1, "handle"    # I
    .param p2, "eventId"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    const/4 v2, 0x0

    .line 591
    const-string v0, "hasAlarm"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 592
    .local v7, "hasAlarm":I
    if-eqz v7, :cond_1

    .line 593
    const/4 v6, 0x0

    .line 594
    .local v6, "alarmCursor":Landroid/database/Cursor;
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "event_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 596
    if-eqz v6, :cond_1

    .line 598
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    const v2, 0xdb11

    const/4 v3, 0x6

    const-string/jumbo v0, "minutes"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    move-object v0, p4

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 608
    .end local v6    # "alarmCursor":Landroid/database/Cursor;
    :cond_1
    return-void

    .line 604
    .restart local v6    # "alarmCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private addBaseInfo(IILandroid/database/Cursor;Landroid/mtp/MtpPropertyList;)Landroid/mtp/MtpDeviceServiceTool$EventRule;
    .locals 3
    .param p1, "handle"    # I
    .param p2, "eventId"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    .line 510
    const v0, 0xdb00

    const-string/jumbo v1, "title"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 512
    const v0, 0xdc44

    const-string/jumbo v1, "title"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 514
    const v0, 0xdd52

    const-string v1, "eventLocation"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 516
    const v0, 0xdb01

    const/16 v1, 0x4004

    const-string v2, "description"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, p1, v0, v1, v2}, Landroid/mtp/MtpPropertyList;->append(IIILjava/lang/String;)V

    .line 518
    const v0, 0xdb0a

    const-string v1, "eventTimezone"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 520
    const v0, 0xdb06

    const-string/jumbo v1, "organizer"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 523
    invoke-direct {p0, p1, p3, p2, p4}, Landroid/mtp/MtpCalendarServiceDB;->getEventRule(ILandroid/database/Cursor;ILandroid/mtp/MtpPropertyList;)Landroid/mtp/MtpDeviceServiceTool$EventRule;

    move-result-object v0

    return-object v0
.end method

.method private addOriginalEventInfo(ILandroid/mtp/MtpDeviceServiceTool$EventRule;Landroid/database/Cursor;Landroid/mtp/MtpPropertyList;)V
    .locals 11
    .param p1, "handle"    # I
    .param p2, "eventRule"    # Landroid/mtp/MtpDeviceServiceTool$EventRule;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    const v6, 0xdc02

    const v2, 0xdb12

    const/4 v3, 0x6

    const/4 v7, 0x4

    .line 612
    const-string/jumbo v0, "original_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 613
    .local v10, "originalId":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 614
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/mtp/MtpCalendarServiceDB;->encodeHandle(II)I

    move-result v0

    int-to-long v4, v0

    move-object v0, p4

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 619
    const-wide/32 v4, 0xff06

    move-object v0, p4

    move v1, p1

    move v2, v6

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 622
    const v0, 0xdbc0

    iget-object v1, p2, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternOriginalDateTime:Ljava/lang/String;

    invoke-virtual {p4, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 631
    :goto_0
    return-void

    .line 625
    :cond_0
    const-wide/32 v8, 0xff05

    move-object v4, p4

    move v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 628
    const-wide/16 v4, 0x0

    move-object v0, p4

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_0
.end method

.method private addRecurrenceInfo(ILandroid/mtp/MtpDeviceServiceTool$EventRule;Landroid/mtp/MtpPropertyList;)V
    .locals 7
    .param p1, "handle"    # I
    .param p2, "eventRule"    # Landroid/mtp/MtpDeviceServiceTool$EventRule;
    .param p3, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x6

    .line 559
    const v2, 0xdbc1

    iget v0, p2, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternType:I

    int-to-long v4, v0

    move-object v0, p3

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 561
    iget-object v0, p2, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternValidEndDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 562
    const v0, 0xdb13

    iget-object v1, p2, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternValidEndDate:Ljava/lang/String;

    invoke-virtual {p3, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 565
    :cond_0
    const v2, 0xdb15

    iget v0, p2, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternPeriod:I

    int-to-long v4, v0

    move-object v0, p3

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 567
    iget v0, p2, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternValidCount:I

    if-lez v0, :cond_1

    .line 568
    const v2, 0xdb14

    iget v0, p2, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternValidCount:I

    int-to-long v4, v0

    move-object v0, p3

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 571
    :cond_1
    const v2, 0xdb0b

    iget v0, p2, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDurationInMinutes:I

    int-to-long v4, v0

    move-object v0, p3

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 573
    const v0, 0xcf12

    iget-object v1, p2, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternValidStartDate:Ljava/lang/String;

    invoke-virtual {p3, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 575
    const v2, 0xdb16

    const/4 v3, 0x4

    iget v0, p2, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDayOfWeek:I

    int-to-long v4, v0

    move-object v0, p3

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 577
    const v2, 0xdb17

    iget v0, p2, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDayOfMonth:I

    int-to-long v4, v0

    move-object v0, p3

    move v1, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 579
    const v2, 0xdb18

    iget v0, p2, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternMonthOfYear:I

    int-to-long v4, v0

    move-object v0, p3

    move v1, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 581
    const v2, 0xdb19

    iget v0, p2, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternInstance:I

    int-to-long v4, v0

    move-object v0, p3

    move v1, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 583
    const v0, 0xdb09

    iget-object v1, p2, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternStartTime:Ljava/lang/String;

    invoke-virtual {p3, p1, v0, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 585
    const v0, 0xdb20

    const/16 v1, 0x4004

    iget-object v2, p2, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDeleteDates:Ljava/lang/String;

    invoke-virtual {p3, p1, v0, v1, v2}, Landroid/mtp/MtpPropertyList;->append(IIILjava/lang/String;)V

    .line 587
    return-void
.end method

.method private getAdapterUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 634
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v2, p0, Landroid/mtp/MtpCalendarServiceDB;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "LOCAL"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getCancelDate(I)Ljava/lang/String;
    .locals 11
    .param p1, "eventId"    # I

    .prologue
    const/4 v9, 0x0

    .line 426
    const/4 v6, 0x0

    .line 428
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dtstart"

    aput-object v4, v2, v3

    const-string/jumbo v3, "original_id = ? AND eventStatus = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 431
    if-eqz v6, :cond_5

    .line 432
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .local v8, "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 434
    const-string v0, "dtstart"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v2, "UTC"

    invoke-static {v0, v1, v2}, Landroid/mtp/MtpDeviceServiceTool;->formatDateTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 436
    .local v7, "str":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 437
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 438
    const-string v0, ";"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_1
    const-string v0, "T"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 449
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 443
    .restart local v8    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 444
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 449
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v8    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_4
    :goto_1
    return-object v0

    :cond_5
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v9

    goto :goto_1
.end method

.method private getDefaultCalendarID()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 89
    const/4 v6, 0x0

    .line 91
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-wide v0, p0, Landroid/mtp/MtpCalendarServiceDB;->mCalendarId:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpCalendarServiceDB;->ID_ACCOUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_type= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "LOCAL"

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 94
    if-eqz v6, :cond_0

    .line 95
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/mtp/MtpCalendarServiceDB;->mCalendarId:J

    .line 97
    const-string v0, "account_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpCalendarServiceDB;->mAccountName:Ljava/lang/String;

    .line 104
    :cond_0
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Landroid/mtp/MtpCalendarServiceDB;->mCalendarId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/mtp/MtpCalendarServiceDB;->mAccountSelectionArgs:[Ljava/lang/String;

    .line 106
    :cond_1
    iget-wide v0, p0, Landroid/mtp/MtpCalendarServiceDB;->mCalendarId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_5

    move v0, v7

    .line 108
    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0

    .line 100
    :cond_3
    :try_start_1
    invoke-direct {p0}, Landroid/mtp/MtpCalendarServiceDB;->insertLocalCalendar()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/mtp/MtpCalendarServiceDB;->mCalendarId:J

    .line 101
    const-string v0, "SYNCML-ORPHANED"

    iput-object v0, p0, Landroid/mtp/MtpCalendarServiceDB;->mAccountName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    move v0, v8

    .line 106
    goto :goto_1
.end method

.method private getEventRule(ILandroid/database/Cursor;ILandroid/mtp/MtpPropertyList;)Landroid/mtp/MtpDeviceServiceTool$EventRule;
    .locals 6
    .param p1, "handle"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "eventId"    # I
    .param p4, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    const/4 v3, 0x1

    .line 528
    new-instance v1, Landroid/mtp/MtpDeviceServiceTool$EventRule;

    invoke-direct {v1}, Landroid/mtp/MtpDeviceServiceTool$EventRule;-><init>()V

    .line 529
    .local v1, "eventRule":Landroid/mtp/MtpDeviceServiceTool$EventRule;
    const-string v4, "dtstart"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/mtp/MtpDeviceServiceTool$EventRule;->startTime:J

    .line 530
    const-string v4, "dtend"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/mtp/MtpDeviceServiceTool$EventRule;->endTime:J

    .line 531
    const-string v4, "duration"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/mtp/MtpDeviceServiceTool$EventRule;->duration:Ljava/lang/String;

    .line 532
    const-string/jumbo v4, "rrule"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/mtp/MtpDeviceServiceTool$EventRule;->recur:Ljava/lang/String;

    .line 533
    const-string v4, "exdate"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/mtp/MtpDeviceServiceTool$EventRule;->exDate:Ljava/lang/String;

    .line 534
    const-string v4, "allDay"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v3, :cond_2

    :goto_0
    iput-boolean v3, v1, Landroid/mtp/MtpDeviceServiceTool$EventRule;->allDay:Z

    .line 535
    const-string v3, "eventTimezone"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/mtp/MtpDeviceServiceTool$EventRule;->timeZone:Ljava/lang/String;

    .line 537
    const-string/jumbo v3, "originalInstanceTime"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, "originalInstanceTime":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 540
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Landroid/mtp/MtpDeviceServiceTool$EventRule;->originalInstanceTime:J

    .line 542
    :cond_0
    invoke-virtual {v1}, Landroid/mtp/MtpDeviceServiceTool$EventRule;->parseLocalToMtp()V

    .line 543
    invoke-direct {p0, p3}, Landroid/mtp/MtpCalendarServiceDB;->getCancelDate(I)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "cancelDates":Ljava/lang/String;
    iget-object v3, v1, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDeleteDates:Ljava/lang/String;

    if-nez v3, :cond_3

    .end local v0    # "cancelDates":Ljava/lang/String;
    :goto_1
    iput-object v0, v1, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDeleteDates:Ljava/lang/String;

    .line 547
    const v3, 0xdb03

    iget-object v4, v1, Landroid/mtp/MtpDeviceServiceTool$EventRule;->beginDateTime:Ljava/lang/String;

    invoke-virtual {p4, p1, v3, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 549
    const v3, 0xdb04

    iget-object v4, v1, Landroid/mtp/MtpDeviceServiceTool$EventRule;->endDateTime:Ljava/lang/String;

    invoke-virtual {p4, p1, v3, v4}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 551
    iget-object v3, v1, Landroid/mtp/MtpDeviceServiceTool$EventRule;->recur:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 552
    invoke-direct {p0, p1, v1, p4}, Landroid/mtp/MtpCalendarServiceDB;->addRecurrenceInfo(ILandroid/mtp/MtpDeviceServiceTool$EventRule;Landroid/mtp/MtpPropertyList;)V

    .line 554
    :cond_1
    return-object v1

    .line 534
    .end local v2    # "originalInstanceTime":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 544
    .restart local v0    # "cancelDates":Ljava/lang/String;
    .restart local v2    # "originalInstanceTime":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDeleteDates:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_4

    const-string v3, ""

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private getUUID(I)Ljava/lang/String;
    .locals 9
    .param p1, "eventId"    # I

    .prologue
    .line 174
    const/4 v6, 0x0

    .line 176
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 177
    .local v7, "ret":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_sync_id"

    aput-object v4, v2, v3

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 179
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "_sync_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 184
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v7

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private insertLocalCalendar()J
    .locals 4

    .prologue
    .line 74
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 75
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    const-string v3, "Phone calendar"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "calendar_displayName"

    const-string v3, "Phone calendar"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v2, "calendar_color"

    const v3, -0xc6a56d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    const-string v2, "account_name"

    const-string v3, "SYNCML-ORPHANED"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v2, "ownerAccount"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v2, "account_type"

    const-string v3, "LOCAL"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v2, "sync_events"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "calendar_access_level"

    const/16 v3, 0x1388

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    iget-object v2, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v3}, Landroid/mtp/MtpCalendarServiceDB;->getAdapterUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 85
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    goto :goto_0
.end method

.method private isAllDay(I)Z
    .locals 11
    .param p1, "eventId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 189
    const/4 v6, 0x0

    .line 191
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 192
    .local v7, "ret":I
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "allDay"

    aput-object v4, v2, v3

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 194
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "allDay"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 197
    :cond_0
    if-eqz v7, :cond_2

    move v0, v8

    .line 199
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0

    :cond_2
    move v0, v9

    .line 197
    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private updateAlarm(II)V
    .locals 10
    .param p1, "eventId"    # I
    .param p2, "minutes"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 394
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 395
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "event_id = ?"

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 400
    .local v8, "reminderValue":Landroid/content/ContentValues;
    const-string/jumbo v0, "minutes"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    const-string v0, "event_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 402
    const-string/jumbo v0, "method"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    const/4 v6, 0x0

    .line 405
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpCalendarServiceDB;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const-string v3, "event_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 407
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 408
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 409
    const-string/jumbo v0, "minutes"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, p2, :cond_2

    .line 421
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 413
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 414
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 415
    .local v7, "reminderId":I
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    .end local v7    # "reminderId":I
    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 418
    :cond_4
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 421
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private updateException(ILandroid/content/ContentValues;Ljava/lang/String;)V
    .locals 16
    .param p1, "eventId"    # I
    .param p2, "eventValue"    # Landroid/content/ContentValues;
    .param p3, "exDate"    # Ljava/lang/String;

    .prologue
    .line 369
    if-nez p3, :cond_1

    .line 370
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v12, "original_id = ? AND eventStatus = ?"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 391
    :cond_0
    return-void

    .line 374
    :cond_1
    const-string v10, ";"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, "dates":[Ljava/lang/String;
    const-string v10, "eventTimezone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 376
    .local v9, "timeZone":Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 377
    .local v6, "exception":Landroid/content/ContentValues;
    move-object v1, v3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v2, v1, v7

    .line 378
    .local v2, "date":Ljava/lang/String;
    invoke-static {v2, v9}, Landroid/mtp/MtpDeviceServiceTool;->parseDateTime2445(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 379
    .local v4, "dstart":J
    const-string v10, "dtstart"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 380
    const-string/jumbo v10, "originalInstanceTime"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 381
    const-string/jumbo v10, "original_sync_id"

    const-string v11, "_sync_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string/jumbo v10, "title"

    const-string/jumbo v11, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v10, "eventStatus"

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 384
    const-string v10, "eventTimezone"

    const-string v11, "eventTimezone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_EXCEPTION_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/mtp/MtpCalendarServiceDB;->getAdapterUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 388
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 377
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private updateModifyTime(ILjava/lang/String;)V
    .locals 7
    .param p1, "eventId"    # I
    .param p2, "modifyTime"    # Ljava/lang/String;

    .prologue
    .line 211
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 212
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "sync_data1"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Landroid/mtp/MtpCalendarServiceDB;->getAdapterUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 214
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method private updateUUID(ILjava/lang/String;)V
    .locals 7
    .param p1, "eventId"    # I
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 204
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 205
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "_sync_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Landroid/mtp/MtpCalendarServiceDB;->getAdapterUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 207
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 208
    return-void
.end method


# virtual methods
.method public deleteObject(I)I
    .locals 13
    .param p1, "handle"    # I

    .prologue
    .line 131
    const/4 v6, 0x0

    .line 133
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 134
    .local v11, "ret":I
    :try_start_0
    invoke-static {p1}, Landroid/mtp/MtpCalendarServiceDB;->decodeHandle(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, "eventId":Ljava/lang/String;
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 137
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    const-string v0, "hasAttendeeData"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 140
    .local v9, "hasAttendeeData":I
    if-eqz v9, :cond_0

    .line 141
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "event_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 144
    :cond_0
    const-string v0, "hasAlarm"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 145
    .local v8, "hasAlarm":I
    if-eqz v8, :cond_1

    .line 146
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "event_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 149
    :cond_1
    sget-object v12, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 153
    .local v12, "uri":Landroid/net/Uri;
    const-string/jumbo v0, "original_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 154
    .local v10, "originalId":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 155
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_EXCEPTION_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 157
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :goto_0
    const/16 v11, 0x2001

    .line 169
    .end local v8    # "hasAlarm":I
    .end local v9    # "hasAttendeeData":I
    .end local v10    # "originalId":Ljava/lang/String;
    .end local v12    # "uri":Landroid/net/Uri;
    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return v11

    .line 159
    .restart local v8    # "hasAlarm":I
    .restart local v9    # "hasAttendeeData":I
    .restart local v10    # "originalId":Ljava/lang/String;
    .restart local v12    # "uri":Landroid/net/Uri;
    :cond_3
    :try_start_1
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "original_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    .end local v7    # "eventId":Ljava/lang/String;
    .end local v8    # "hasAlarm":I
    .end local v9    # "hasAttendeeData":I
    .end local v10    # "originalId":Ljava/lang/String;
    .end local v12    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 165
    .restart local v7    # "eventId":Ljava/lang/String;
    :cond_5
    const/16 v11, 0x2009

    goto :goto_1
.end method

.method protected getChangedItems()[Landroid/mtp/MtpServiceDatabase$ChangeItem;
    .locals 7

    .prologue
    .line 652
    invoke-virtual {p0}, Landroid/mtp/MtpCalendarServiceDB;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Landroid/mtp/MtpCalendarServiceDB;->ID_DIRTY_DELETED_PROJECTION:[Ljava/lang/String;

    const-string v3, "calendar_id=? AND (dirty!=0 OR deleted!=0)"

    iget-object v4, p0, Landroid/mtp/MtpCalendarServiceDB;->mAccountSelectionArgs:[Ljava/lang/String;

    const-string v5, "deleted"

    const-string v6, "dirty"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/mtp/MtpServiceDatabase;->getChangedItems(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/mtp/MtpServiceDatabase$ChangeItem;

    move-result-object v0

    return-object v0
.end method

.method protected getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 642
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getNumObjects()I
    .locals 3

    .prologue
    .line 125
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "deleted = 0 AND IFNULL(eventStatus,0) <> 2 AND calendar_id = ?"

    iget-object v2, p0, Landroid/mtp/MtpCalendarServiceDB;->mAccountSelectionArgs:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/mtp/MtpServiceDatabase;->getNumObjects(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getObjectHandles()[I
    .locals 4

    .prologue
    .line 119
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "deleted = 0 AND IFNULL(eventStatus,0) <> 2 AND calendar_id = ?"

    iget-object v2, p0, Landroid/mtp/MtpCalendarServiceDB;->mAccountSelectionArgs:[Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/mtp/MtpServiceDatabase;->getObjectHandles(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public getObjectPropertyList(IIIII)Landroid/mtp/MtpPropertyList;
    .locals 15
    .param p1, "handle"    # I
    .param p2, "format"    # I
    .param p3, "property"    # I
    .param p4, "groupCode"    # I
    .param p5, "depth"    # I

    .prologue
    .line 456
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    const v2, 0xdd81

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 457
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/mtp/MtpServiceDatabase;->getObjectsPUID(I)Landroid/mtp/MtpPropertyList;

    move-result-object v1

    .line 505
    :cond_0
    :goto_0
    return-object v1

    .line 460
    :cond_1
    new-instance v1, Landroid/mtp/MtpPropertyList;

    const/16 v2, 0x50

    const/16 v3, 0x2001

    invoke-direct {v1, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 462
    .local v1, "mtpPropertyList":Landroid/mtp/MtpPropertyList;
    const v3, 0xdd81

    const/16 v4, 0xa

    move/from16 v0, p1

    int-to-long v5, v0

    move/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 464
    const/4 v8, 0x0

    .line 466
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/mtp/MtpCalendarServiceDB;->decodeHandle(I)I

    move-result v10

    .line 467
    .local v10, "eventId":I
    iget-object v2, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 469
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 471
    move/from16 v0, p1

    invoke-direct {p0, v0, v10, v8, v1}, Landroid/mtp/MtpCalendarServiceDB;->addBaseInfo(IILandroid/database/Cursor;Landroid/mtp/MtpPropertyList;)Landroid/mtp/MtpDeviceServiceTool$EventRule;

    move-result-object v11

    .line 473
    .local v11, "eventRule":Landroid/mtp/MtpDeviceServiceTool$EventRule;
    move/from16 v0, p1

    invoke-direct {p0, v0, v10, v8, v1}, Landroid/mtp/MtpCalendarServiceDB;->addAlarmInfo(IILandroid/database/Cursor;Landroid/mtp/MtpPropertyList;)V

    .line 475
    move/from16 v0, p1

    invoke-direct {p0, v0, v11, v8, v1}, Landroid/mtp/MtpCalendarServiceDB;->addOriginalEventInfo(ILandroid/mtp/MtpDeviceServiceTool$EventRule;Landroid/database/Cursor;Landroid/mtp/MtpPropertyList;)V

    .line 477
    const-string/jumbo v2, "sync_data1"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 478
    .local v12, "modifiedTime":Ljava/lang/String;
    if-nez v12, :cond_2

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/mtp/MtpDeviceServiceTool;->getDateTime2445(J)Ljava/lang/String;

    move-result-object v12

    .line 481
    invoke-direct {p0, v10, v12}, Landroid/mtp/MtpCalendarServiceDB;->updateModifyTime(ILjava/lang/String;)V

    .line 483
    :cond_2
    const v2, 0xddd1

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2, v12}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 484
    const v3, 0xdc0b

    const/4 v4, 0x6

    const-wide/16 v5, 0x0

    move/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 486
    const-string v2, "_sync_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 487
    .local v13, "uuid":Ljava/lang/String;
    if-nez v13, :cond_3

    .line 488
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v10, v2}, Landroid/mtp/MtpCalendarServiceDB;->updateUUID(ILjava/lang/String;)V

    .line 490
    :cond_3
    const v3, 0xdc04

    const/16 v4, 0x8

    const-wide/16 v5, 0x0

    move/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 492
    const v3, 0xdc01

    const/4 v4, 0x6

    const-wide/32 v5, 0x10003

    move/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 495
    invoke-static {v1}, Landroid/mtp/MtpPropertyListHelper;->filterNullProperty(Landroid/mtp/MtpPropertyList;)Landroid/mtp/MtpPropertyList;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 503
    .end local v11    # "eventRule":Landroid/mtp/MtpDeviceServiceTool$EventRule;
    .end local v12    # "modifiedTime":Ljava/lang/String;
    .end local v13    # "uuid":Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 497
    :cond_4
    :try_start_1
    new-instance v1, Landroid/mtp/MtpPropertyList;

    .end local v1    # "mtpPropertyList":Landroid/mtp/MtpPropertyList;
    const/4 v2, 0x0

    const/16 v3, 0x2009

    invoke-direct {v1, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1    # "mtpPropertyList":Landroid/mtp/MtpPropertyList;
    goto :goto_1

    .line 500
    .end local v1    # "mtpPropertyList":Landroid/mtp/MtpPropertyList;
    .end local v10    # "eventId":I
    :catch_0
    move-exception v9

    .line 501
    .local v9, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v1, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2002

    invoke-direct {v1, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    .restart local v1    # "mtpPropertyList":Landroid/mtp/MtpPropertyList;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v1    # "mtpPropertyList":Landroid/mtp/MtpPropertyList;
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method protected getServiceId()I
    .locals 1

    .prologue
    .line 647
    const/16 v0, 0x3f

    return v0
.end method

.method public handleData(ILandroid/mtp/MtpPropertyList;)[I
    .locals 17
    .param p1, "handle"    # I
    .param p2, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    .line 219
    const/4 v12, 0x2

    new-array v7, v12, [I

    .line 220
    .local v7, "result":[I
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/mtp/MtpCalendarServiceDB;->mCalendarId:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_0

    .line 221
    const/4 v12, 0x0

    const/16 v13, 0x2002

    aput v13, v7, v12

    .line 365
    :goto_0
    return-object v7

    .line 224
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 225
    .local v4, "eventValue":Landroid/content/ContentValues;
    const-string v12, "dirty"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    const/4 v2, -0x1

    .line 227
    .local v2, "alarm":I
    const/4 v6, -0x1

    .line 228
    .local v6, "parent":I
    new-instance v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;

    invoke-direct {v3}, Landroid/mtp/MtpDeviceServiceTool$EventRule;-><init>()V

    .line 229
    .local v3, "eventRule":Landroid/mtp/MtpDeviceServiceTool$EventRule;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/mtp/MtpPropertyList;->getCount()I

    move-result v12

    if-ge v5, v12, :cond_5

    .line 230
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    if-nez v12, :cond_2

    const/4 v8, 0x0

    .line 232
    .local v8, "stringValue":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    if-nez v12, :cond_3

    const/4 v11, 0x0

    .line 234
    .local v11, "value":I
    :goto_3
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aget v12, v12, v5

    sparse-switch v12, :sswitch_data_0

    .line 229
    :cond_1
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 230
    .end local v8    # "stringValue":Ljava/lang/String;
    .end local v11    # "value":I
    :cond_2
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    aget-object v8, v12, v5

    goto :goto_2

    .line 232
    .restart local v8    # "stringValue":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    aget-wide v12, v12, v5

    long-to-int v11, v12

    goto :goto_3

    .line 236
    .restart local v11    # "value":I
    :sswitch_0
    const-string/jumbo v12, "title"

    invoke-virtual {v4, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 239
    :sswitch_1
    const-string v12, "eventLocation"

    invoke-virtual {v4, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 242
    :sswitch_2
    const-string v12, "description"

    invoke-virtual {v4, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 245
    :sswitch_3
    iput v11, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDurationInMinutes:I

    goto :goto_4

    .line 248
    :sswitch_4
    iput-object v8, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->beginDateTime:Ljava/lang/String;

    goto :goto_4

    .line 251
    :sswitch_5
    iput-object v8, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->endDateTime:Ljava/lang/String;

    goto :goto_4

    .line 254
    :sswitch_6
    const-string/jumbo v12, "organizer"

    invoke-virtual {v4, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 259
    :sswitch_7
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    aget v12, v12, v5

    if-eqz v12, :cond_1

    .line 262
    const-string v12, "hasAlarm"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    move v2, v11

    .line 264
    goto :goto_4

    .line 266
    :sswitch_8
    iput v11, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternType:I

    goto :goto_4

    .line 269
    :sswitch_9
    iput-object v8, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternValidEndDate:Ljava/lang/String;

    goto :goto_4

    .line 272
    :sswitch_a
    iput v11, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternPeriod:I

    goto :goto_4

    .line 275
    :sswitch_b
    iput v11, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDayOfWeek:I

    goto :goto_4

    .line 278
    :sswitch_c
    iput v11, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDayOfMonth:I

    goto :goto_4

    .line 281
    :sswitch_d
    iput v11, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternMonthOfYear:I

    goto :goto_4

    .line 284
    :sswitch_e
    iput v11, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternValidCount:I

    goto :goto_4

    .line 287
    :sswitch_f
    iput-object v8, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternDeleteDates:Ljava/lang/String;

    goto :goto_4

    .line 290
    :sswitch_10
    iput v11, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternInstance:I

    goto :goto_4

    .line 293
    :sswitch_11
    iput-object v8, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternStartTime:Ljava/lang/String;

    goto :goto_4

    .line 296
    :sswitch_12
    iput-object v8, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternOriginalDateTime:Ljava/lang/String;

    goto :goto_4

    .line 299
    :sswitch_13
    if-nez v8, :cond_4

    .line 300
    const-string v12, "eventTimezone"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 302
    :cond_4
    const-string v12, "eventTimezone"

    invoke-virtual {v4, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 306
    :sswitch_14
    invoke-static {v11}, Landroid/mtp/MtpCalendarServiceDB;->decodeHandle(I)I

    move-result v6

    .line 307
    goto :goto_4

    .line 313
    .end local v8    # "stringValue":Ljava/lang/String;
    .end local v11    # "value":I
    :cond_5
    const-string v12, "eventTimezone"

    invoke-virtual {v4, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 314
    const-string v12, "eventTimezone"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_6
    const-string v12, "eventTimezone"

    invoke-virtual {v4, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->timeZone:Ljava/lang/String;

    .line 317
    invoke-virtual {v3}, Landroid/mtp/MtpDeviceServiceTool$EventRule;->parseMtpToLocal()V

    .line 318
    iget-object v12, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->recur:Ljava/lang/String;

    if-eqz v12, :cond_a

    .line 319
    const-string v13, "duration"

    iget-object v12, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->duration:Ljava/lang/String;

    if-nez v12, :cond_9

    const-string v12, "P30M"

    :goto_5
    invoke-virtual {v4, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string/jumbo v12, "rrule"

    iget-object v13, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->recur:Ljava/lang/String;

    invoke-static {v13}, Landroid/mtp/MtpDeviceServiceTool;->formatDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v12, "dtend"

    invoke-virtual {v4, v12}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 327
    :goto_6
    const-string v13, "allDay"

    iget-boolean v12, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->allDay:Z

    if-eqz v12, :cond_b

    const/4 v12, 0x1

    :goto_7
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    const-string v12, "dtstart"

    iget-wide v13, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->startTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 329
    const-string v12, "calendar_id"

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/mtp/MtpCalendarServiceDB;->mCalendarId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 330
    const-string/jumbo v12, "sync_data1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Landroid/mtp/MtpDeviceServiceTool;->getDateTime2445(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    if-lez v6, :cond_8

    .line 333
    const-string/jumbo v12, "original_id"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/mtp/MtpCalendarServiceDB;->isAllDay(I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 335
    iget-object v12, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->patternOriginalDateTime:Ljava/lang/String;

    const-string v13, "UTC"

    invoke-static {v12, v13}, Landroid/mtp/MtpDeviceServiceTool;->parseDateTime2445(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->originalInstanceTime:J

    .line 338
    :cond_7
    const-string/jumbo v12, "originalInstanceTime"

    iget-wide v13, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->originalInstanceTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 339
    const-string/jumbo v12, "original_sync_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/mtp/MtpCalendarServiceDB;->getUUID(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_8
    sget-object v12, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/mtp/MtpCalendarServiceDB;->getAdapterUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v10

    .line 342
    .local v10, "uri":Landroid/net/Uri;
    const/4 v12, -0x1

    move/from16 v0, p1

    if-eq v0, v12, :cond_c

    .line 345
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    const-string v13, "_id = ?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v10, v4, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 361
    :goto_8
    iget-object v12, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->exDate:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4, v12}, Landroid/mtp/MtpCalendarServiceDB;->updateException(ILandroid/content/ContentValues;Ljava/lang/String;)V

    .line 362
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpCalendarServiceDB;->updateAlarm(II)V

    .line 363
    const/4 v12, 0x0

    const/16 v13, 0x2001

    aput v13, v7, v12

    .line 364
    const/4 v12, 0x1

    const/4 v13, 0x2

    move/from16 v0, p1

    invoke-static {v0, v13}, Landroid/mtp/MtpCalendarServiceDB;->encodeHandle(II)I

    move-result v13

    aput v13, v7, v12

    goto/16 :goto_0

    .line 319
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_9
    iget-object v12, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->duration:Ljava/lang/String;

    goto/16 :goto_5

    .line 325
    :cond_a
    const-string v12, "dtend"

    iget-wide v13, v3, Landroid/mtp/MtpDeviceServiceTool$EventRule;->endTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_6

    .line 327
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 351
    .restart local v10    # "uri":Landroid/net/Uri;
    :cond_c
    const-string/jumbo v12, "selfAttendeeStatus"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    const-string v12, "hasAttendeeData"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    const-string v12, "_sync_id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v12, v10, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 355
    .local v9, "tempUri":Landroid/net/Uri;
    if-nez v9, :cond_d

    .line 356
    const/4 v12, 0x0

    const/16 v13, 0x2002

    aput v13, v7, v12

    goto/16 :goto_0

    .line 359
    :cond_d
    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    long-to-int v0, v12

    move/from16 p1, v0

    goto :goto_8

    .line 234
    :sswitch_data_0
    .sparse-switch
        0xdb00 -> :sswitch_0
        0xdb01 -> :sswitch_2
        0xdb03 -> :sswitch_4
        0xdb04 -> :sswitch_5
        0xdb06 -> :sswitch_6
        0xdb09 -> :sswitch_11
        0xdb0a -> :sswitch_13
        0xdb0b -> :sswitch_3
        0xdb11 -> :sswitch_7
        0xdb12 -> :sswitch_14
        0xdb13 -> :sswitch_9
        0xdb14 -> :sswitch_e
        0xdb15 -> :sswitch_a
        0xdb16 -> :sswitch_b
        0xdb17 -> :sswitch_c
        0xdb18 -> :sswitch_d
        0xdb19 -> :sswitch_10
        0xdb20 -> :sswitch_f
        0xdbc0 -> :sswitch_12
        0xdbc1 -> :sswitch_8
        0xdd52 -> :sswitch_1
    .end sparse-switch
.end method

.method protected processUpdatedData([Landroid/mtp/MtpServiceDatabase$ChangeItem;)V
    .locals 6
    .param p1, "changedItems"    # [Landroid/mtp/MtpServiceDatabase$ChangeItem;

    .prologue
    .line 658
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Landroid/mtp/MtpCalendarServiceDB;->getAdapterUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 660
    .local v1, "syncAdapterUri":Landroid/net/Uri;
    const-string v0, "calendar_id=? AND deleted!=0"

    iget-object v2, p0, Landroid/mtp/MtpCalendarServiceDB;->mAccountSelectionArgs:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Landroid/mtp/MtpServiceDatabase;->cleanDeletedItems(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 662
    const-string v3, "dirty"

    const-string v4, "_id = ?"

    const-string v5, "com.android.calendar"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MtpServiceDatabase;->updateDirtyData(Landroid/net/Uri;[Landroid/mtp/MtpServiceDatabase$ChangeItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    return-void
.end method

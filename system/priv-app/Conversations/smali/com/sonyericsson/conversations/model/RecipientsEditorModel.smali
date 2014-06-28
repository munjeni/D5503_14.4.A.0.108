.class public Lcom/sonyericsson/conversations/model/RecipientsEditorModel;
.super Lcom/sonyericsson/conversations/model/LoaderModel;
.source "RecipientsEditorModel.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/conversations/model/LoaderModel;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTACT_ID_INDEX:I = 0x1

.field private static final DATA_CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final DATA_INDEX:I = 0x3

.field public static final LABEL_INDEX:I = 0x4

.field public static final MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

.field public static final MODEL_EVENT_DATA_RESET:Ljava/lang/String;

.field public static final NAME_INDEX:I = 0x5

.field private static final PROJECTION_PHONE_AND_EMAIL:[Ljava/lang/String;

.field public static final RECENT_CONTACTS_COLUMN_ADDRESS:Ljava/lang/String; = "address"

.field private static final RECENT_CONTACTS_COLUMN_ID:Ljava/lang/String; = "_id"

.field static final RECENT_CONTACTS_COLUMN_NAMES:[Ljava/lang/String;

.field private static final RECENT_CONTACTS_COLUMN_RECIPIENT_IDS:Ljava/lang/String; = "recipient_ids"

.field private static final RECENT_CONTACTS_LIST_CURSOR_LOADER_ID:I = 0x0

.field private static final RECENT_CONTACTS_MAX_NUMBER:I = 0x14

.field protected static final SORT_ORDER:Ljava/lang/String; = "display_name COLLATE LOCALIZED ASC,contact_id ASC,mimetype DESC"

.field public static final TYPE_INDEX:I = 0x2

.field public static final UPDATE_CURSER_DELAY:I = 0x15e

.field private static final VERSION:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final selectionByNumber:Ljava/lang/String; = "(mimetype=\'vnd.android.cursor.item/phone_v2\') AND in_visible_group=1"

.field protected static final selectionByNumberOrEmail:Ljava/lang/String; = "(mimetype=\'vnd.android.cursor.item/phone_v2\' OR mimetype=\'vnd.android.cursor.item/email_v2\') AND in_visible_group=1"


# instance fields
.field private mContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mRecentContactLabel:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentContactName:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_reset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->MODEL_EVENT_DATA_RESET:Ljava/lang/String;

    .line 60
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "address"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->RECENT_CONTACTS_COLUMN_NAMES:[Ljava/lang/String;

    .line 74
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->DATA_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 93
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "data2"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "in_visible_group"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->PROJECTION_PHONE_AND_EMAIL:[Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->VERSION:Ljava/util/ArrayList;

    .line 118
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->buildVersion(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/LoaderModel;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mContext:Landroid/content/Context;

    .line 110
    iput-object v0, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mThread:Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;

    .line 266
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/model/RecipientsEditorModel;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mRecentContactName:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/model/RecipientsEditorModel;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mRecentContactLabel:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static buildVersion(Ljava/lang/String;)V
    .locals 9
    .param p0, "vsn"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string v6, "[.\\- ]"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "version":[Ljava/lang/String;
    sget-object v6, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->VERSION:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 125
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_3

    .line 127
    :try_start_0
    sget-object v6, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->VERSION:Ljava/util/ArrayList;

    aget-object v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/NumberFormatException;
    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 134
    .local v3, "len":I
    move v4, v3

    .local v4, "off":I
    :goto_2
    if-ltz v4, :cond_0

    .line 135
    aget-object v6, v5, v2

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 138
    .local v0, "c":C
    const/16 v6, 0x30

    if-lt v0, v6, :cond_1

    const/16 v6, 0x39

    if-le v0, v6, :cond_2

    .line 139
    :cond_1
    if-eq v4, v3, :cond_0

    .line 140
    sget-object v6, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->VERSION:Ljava/util/ArrayList;

    aget-object v7, v5, v2

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 147
    .end local v0    # "c":C
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "len":I
    .end local v4    # "off":I
    :cond_3
    return-void
.end method

.method public static compare(I)I
    .locals 1
    .param p0, "sdkversion"    # I

    .prologue
    .line 355
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public static compare([I)I
    .locals 5
    .param p0, "version"    # [I

    .prologue
    .line 361
    const/4 v2, 0x0

    .line 362
    .local v2, "ret":I
    sget-object v3, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->VERSION:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    array-length v4, p0

    if-ge v3, v4, :cond_0

    sget-object v3, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->VERSION:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 364
    .local v0, "length":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "off":I
    :goto_1
    if-nez v2, :cond_1

    if-ge v1, v0, :cond_1

    .line 365
    sget-object v3, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->VERSION:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget v4, p0, v1

    sub-int v2, v3, v4

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 362
    .end local v0    # "length":I
    .end local v1    # "off":I
    :cond_0
    array-length v0, p0

    goto :goto_0

    .line 368
    .restart local v0    # "length":I
    .restart local v1    # "off":I
    :cond_1
    if-nez v2, :cond_3

    .line 369
    sget-object v3, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->VERSION:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 370
    :goto_2
    if-nez v2, :cond_3

    sget-object v3, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->VERSION:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 371
    sget-object v3, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->VERSION:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 373
    :cond_2
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 374
    :goto_3
    if-nez v2, :cond_3

    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 375
    aget v3, p0, v1

    neg-int v2, v3

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 380
    :cond_3
    return v2
.end method

.method private static getConversationFilterUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "aFilter"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    invoke-static {}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->hasVanillaPickerFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->DATA_CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 179
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_1
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getRecentContactProjection()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v0, "queryProjection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "address"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static getRecentContactSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    const-string v0, "address<> \'\' AND recipient_ids NOT LIKE \'% %\'"

    .line 226
    .local v0, "selection":Ljava/lang/String;
    return-object v0
.end method

.method public static getSpecifyContactData(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 414
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->getConversationFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->PROJECTION_PHONE_AND_EMAIL:[Ljava/lang/String;

    const-string v3, "(mimetype=\'vnd.android.cursor.item/phone_v2\' OR mimetype=\'vnd.android.cursor.item/email_v2\') AND in_visible_group=1"

    const-string v5, "display_name COLLATE LOCALIZED ASC,contact_id ASC,mimetype DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 418
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->getConversationFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->PROJECTION_PHONE_AND_EMAIL:[Ljava/lang/String;

    const-string v3, "(mimetype=\'vnd.android.cursor.item/phone_v2\') AND in_visible_group=1"

    const-string v5, "display_name COLLATE LOCALIZED ASC,contact_id ASC,mimetype DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasVanillaPickerFilter()Z
    .locals 1

    .prologue
    .line 349
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->compare(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->compare([I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 4
        0x6
        0x0
    .end array-data
.end method

.method private performFilter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-static {p1}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createContactList(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .param p1, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mContactList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 250
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x14

    if-ge v1, v3, :cond_1

    .line 251
    const-string v1, "address"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "address":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->performFilter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    .end local v0    # "address":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 258
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public createRecentContactCursor()Landroid/database/MatrixCursor;
    .locals 10

    .prologue
    .line 390
    iget-object v9, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mContactList:Ljava/util/ArrayList;

    monitor-enter v9

    .line 391
    :try_start_0
    iget-object v8, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 392
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v8, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->RECENT_CONTACTS_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v3, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 393
    .local v3, "cursor":Landroid/database/MatrixCursor;
    const/4 v2, 0x0

    .line 394
    .local v2, "count":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
    .local v0, "address":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mRecentContactName:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 396
    new-instance v1, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v1, v0}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 397
    .local v1, "contact":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getPersonName()Ljava/lang/String;

    move-result-object v6

    .line 398
    .local v6, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mRecentContactName:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v6, :cond_1

    .end local v6    # "name":Ljava/lang/String;
    :goto_1
    invoke-virtual {v8, v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .end local v1    # "contact":Lcom/sonyericsson/conversations/model/Participant;
    :cond_0
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v7

    .line 405
    .local v7, "rb":Landroid/database/MatrixCursor$RowBuilder;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 406
    invoke-virtual {v7, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 407
    add-int/lit8 v2, v2, 0x1

    .line 408
    goto :goto_0

    .line 398
    .end local v7    # "rb":Landroid/database/MatrixCursor$RowBuilder;
    .restart local v1    # "contact":Lcom/sonyericsson/conversations/model/Participant;
    .restart local v6    # "name":Ljava/lang/String;
    :cond_1
    const-string v6, ""

    goto :goto_1

    .line 409
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "contact":Lcom/sonyericsson/conversations/model/Participant;
    .end local v6    # "name":Ljava/lang/String;
    :cond_2
    monitor-exit v9

    return-object v3

    .line 410
    .end local v2    # "count":I
    .end local v3    # "cursor":Landroid/database/MatrixCursor;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public fillRecipientCache(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    .line 230
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->createContactList(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 236
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mThread:Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mThread:Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mThread:Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;->stopThread()V

    .line 240
    :cond_2
    new-instance v1, Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;-><init>(Lcom/sonyericsson/conversations/model/RecipientsEditorModel;Ljava/util/List;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mThread:Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;

    .line 241
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mThread:Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getContactLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 310
    const/4 v6, 0x0

    .line 312
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->getConversationFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->getLabelProjections()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "(mimetype=\'vnd.android.cursor.item/phone_v2\' OR mimetype=\'vnd.android.cursor.item/email_v2\') AND in_visible_group=1"

    const-string v5, "display_name COLLATE LOCALIZED ASC,contact_id ASC,mimetype DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 320
    :goto_0
    const/4 v7, 0x0

    .line 321
    .local v7, "ret":Ljava/lang/CharSequence;
    if-eqz v6, :cond_1

    .line 323
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 335
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    .line 336
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 341
    :cond_1
    return-object v7

    .line 316
    .end local v7    # "ret":Ljava/lang/CharSequence;
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->getConversationFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->getLabelProjections()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "(mimetype=\'vnd.android.cursor.item/phone_v2\') AND in_visible_group=1"

    const-string v5, "display_name COLLATE LOCALIZED ASC,contact_id ASC,mimetype DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 328
    .restart local v7    # "ret":Ljava/lang/CharSequence;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    goto :goto_1

    .line 335
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 336
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 335
    :cond_4
    throw v0
.end method

.method public getLabelProjections()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->PROJECTION_PHONE_AND_EMAIL:[Ljava/lang/String;

    .line 385
    .local v0, "projections":[Ljava/lang/String;
    return-object v0
.end method

.method public getRecentContactLabelMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mRecentContactLabel:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getRecentContactNameMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mRecentContactName:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public initModel(Landroid/content/Context;Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mContext:Landroid/content/Context;

    .line 151
    if-eqz p2, :cond_0

    .line 152
    invoke-virtual {p0, p2}, Lcom/sonyericsson/conversations/model/BaseModel;->addListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 154
    :cond_0
    return-void
.end method

.method public initRecentContactData(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mContactList:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mRecentContactName:Ljava/util/concurrent/ConcurrentHashMap;

    .line 169
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mRecentContactLabel:Ljava/util/concurrent/ConcurrentHashMap;

    .line 170
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p0}, Lcom/sonyericsson/conversations/model/LoaderModel;->createCursorLoaderForListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)V

    .line 171
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentLoader;

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->getRecentContactProjection()[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->getRecentContactSelection()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .local v0, "loader":Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentLoader;
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentLoader;

    if-eqz v0, :cond_0

    .line 206
    check-cast p1, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentLoader;

    .end local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentLoader;->setUpdateThrottle(J)V

    .line 208
    :cond_0
    sget-object v0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/model/BaseModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-object v0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->MODEL_EVENT_DATA_RESET:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/model/BaseModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method public uninitModel(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/model/BaseModel;->removeListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mThread:Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mThread:Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mThread:Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;->stopThread()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->mThread:Lcom/sonyericsson/conversations/model/RecipientsEditorModel$GetContactInfoThread;

    .line 164
    :cond_1
    return-void
.end method

.class public abstract Lcom/sonyericsson/conversations/settings/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final KEY_BUBBLE_ALIGN_REVERSE:Ljava/lang/String; = "semc_pref_key_bubble_align_reverse"

.field public static final KEY_CELLBROADCAST_ENABLED:Ljava/lang/String; = "semc_pref_key_cellbroadcast-enabled"

.field public static final KEY_CHARACTER_CONVERSION:Ljava/lang/String; = "semc_pref_key_character_conversion"

.field public static final KEY_CT_FEATURE_ENABLED:Ljava/lang/String; = "semc_pref_key_ct_feature_enabled"

.field public static final KEY_DELIVERY_REPORT:Ljava/lang/String; = "pref_key_delivery_reports"

.field public static final KEY_DISABLE_MMS:Ljava/lang/String; = "semc_pref_key_disable_mms"

.field public static final KEY_EMERGENCY_ALERTS_CATEGORY:Ljava/lang/String; = "pref_key_category_alerts"

.field public static final KEY_EMERGENCY_ALERTS_ENABLED:Ljava/lang/String; = "emergency_alerts_enabled"

.field public static final KEY_ENABLE_ATTACHMENT_INDICATOR:Ljava/lang/String; = "semc_pref_key_enable_attachment_indicator"

.field public static final KEY_ENABLE_AUTO_ADD_SUBJECT:Ljava/lang/String; = "semc_pref_key_enable_auto_add_subject"

.field public static final KEY_ENABLE_AUTO_TRIM_LARGE_VIDEO:Ljava/lang/String; = "semc_pref_key_enable_auto_trim_large_video"

.field public static final KEY_ENABLE_CITYID:Ljava/lang/String; = "semc_pref_key_cityid_enabled"

.field public static final KEY_ENABLE_COMPOSER_ATTACHMENT_PREVIEW:Ljava/lang/String; = "semc_pref_key_enable_composer_attachment_preview"

.field public static final KEY_ENABLE_CONVERSATIONS_LINKIFY:Ljava/lang/String; = "semc_pref_key_enable_conversations_linkify"

.field public static final KEY_ENABLE_DOODLE:Ljava/lang/String; = "semc_pref_key_enable_doodle"

.field public static final KEY_ENABLE_FORCE_MESSAGE_TYPE:Ljava/lang/String; = "semc_pref_key_enable_force_message_type"

.field public static final KEY_ENABLE_IGNORE_CLASS_2_SMS:Ljava/lang/String; = "semc_pref_key_enable_ignore_class_2_sms"

.field public static final KEY_ENABLE_MMS_PREVIEW:Ljava/lang/String; = "semc_pref_key_enable_mms_preview"

.field public static final KEY_ENABLE_MMS_SUBJECT:Ljava/lang/String; = "semc_pref_key_enable_mms_subject"

.field public static final KEY_ENABLE_SAVE_DRAFT_DIALOG:Ljava/lang/String; = "semc_pref_key_enable_save_draft_dialog"

.field public static final KEY_ENABLE_SLIDESHOW_EDITOR:Ljava/lang/String; = "semc_pref_key_enable_slideshow_editor"

.field public static final KEY_ENABLE_TOTAL_COUNT:Ljava/lang/String; = "semc_pref_key_enable_total_count"

.field public static final KEY_ENABLE_USE_WHITE_THEME:Ljava/lang/String; = "semc_pref_key_enable_use_white_theme"

.field public static final KEY_GENERAL_SETTINGS_CATEGORY:Ljava/lang/String; = "pref_key_category_general_settings"

.field public static final KEY_IMAGE_RESOLUTIONS:Ljava/lang/String; = "semc_pref_key_image_resolution"

.field public static final KEY_MAX_RECIPIENTS:Ljava/lang/String; = "semc_pref_key_max_recipients"

.field public static final KEY_MIMETYPE_FROM_FILE_EXTENSION:Ljava/lang/String; = "semc_pref_key_mimetype_from_file_extension"

.field public static final KEY_MMS_AUTO_RETRIEVAL:Ljava/lang/String; = "pref_key_mms_auto_retrieval"

.field public static final KEY_MMS_HTTP_HEADER:Ljava/lang/String; = "semc_pref_mms_http_header"

.field public static final KEY_MMS_INTERVAL:Ljava/lang/String; = "semc_pref_mms_interval"

.field public static final KEY_MMS_MAX_OBJECTS:Ljava/lang/String; = "semc_pref_key_mms_max_objects"

.field public static final KEY_MMS_MAX_SIZE:Ljava/lang/String; = "semc_pref_key_mms_max_size"

.field public static final KEY_MMS_MAX_TEXT_SIZE:Ljava/lang/String; = "semc_pref_mms_max_text_size"

.field public static final KEY_MMS_RETRIEVAL_DURING_ROAMING:Ljava/lang/String; = "pref_key_mms_retrieval_during_roaming"

.field public static final KEY_MMS_TRIGGER_RECIPIENTS:Ljava/lang/String; = "semc_pref_key_mms_trigger_recipients"

.field public static final KEY_MMS_TRIGGER_SMS_PDU_BYTES:Ljava/lang/String; = "semc_pref_key_mms_trigger_pdu_bytes"

.field public static final KEY_MMS_TRIGGER_SMS_SEGMENTS:Ljava/lang/String; = "semc_pref_key_mms_trigger_sms_segments"

.field public static final KEY_MMS_VERSION:Ljava/lang/String; = "semc_pref_key_mms_version"

.field public static final KEY_NOTIFICATION_CATEGORY:Ljava/lang/String; = "pref_key_category_notification"

.field public static final KEY_NOTIFICATION_ENABLED:Ljava/lang/String; = "pref_key_enable_notifications"

.field public static final KEY_NOTIFICATION_LED_ENABLED:Ljava/lang/String; = "semc_pref_key_notification_led_enabled"

.field public static final KEY_NOTIFICATION_RINGTONE:Ljava/lang/String; = "pref_key_ringtone"

.field public static final KEY_NOTIFICATION_SETTINGS:Ljava/lang/String; = "pref_key_notifications_settings"

.field public static final KEY_NOTIFICATION_VIBRATE:Ljava/lang/String; = "pref_key_vibrate"

.field public static final KEY_READ_REPORT:Ljava/lang/String; = "pref_key_mms_read_reports"

.field public static final KEY_SENDER_NAME_VISIBILITY:Ljava/lang/String; = "semc_pref_key_sender_name_visibility"

.field public static final KEY_SHOW_ENCODING_CHANGED_NOTIFICATION:Ljava/lang/String; = "semc_pref_key_show_encoding_changed_notification"

.field public static final KEY_SHOW_PARTICIPANTS_IN_MESSAGE_HEADER:Ljava/lang/String; = "semc_pref_key_show_participants_in_message_header"

.field public static final KEY_SIM_MESSAGES:Ljava/lang/String; = "pref_key_sim_messages"

.field public static final KEY_SMSC_EDITABLE_VALUE:Ljava/lang/String; = "semc_pref_key_smsc_editable_value"

.field public static final KEY_SMSC_NUMBER:Ljava/lang/String; = "pref_key_smsc_number"

.field public static final KEY_SMS_MAX_SEGMENTS:Ljava/lang/String; = "semc_pref_key_sms_max_segments"

.field public static final KEY_SMS_ORIGINAL_ADDRESS_PATTERN:Ljava/lang/String; = "semc_pref_key_sms_original_address_pattern"

.field public static final KEY_SMS_ORIGINAL_ADDRESS_REPLACEMENT:Ljava/lang/String; = "semc_pref_key_sms_original_address_replacement"

.field public static final KEY_STRICT_PHONENUMBER_COMPARISON_PREFIX:Ljava/lang/String; = "semc_pref_key_strict_phonenumber_comparison_prefix"

.field public static final KEY_SUFFIX_VISIBILITY:Ljava/lang/String; = "_visibility"

.field public static final KEY_TEXT_TEMPLATE:Ljava/lang/String; = "pref_key_text_template"

.field public static final KEY_USE_SC_TIMESTAMP:Ljava/lang/String; = "semc_pref_key_use_sc_timestamp"

.field public static final KEY_VIDEO_CONTAINER_FORMAT:Ljava/lang/String; = "semc_pref_key_video_container_format"

.field public static final PREF_KEY_EMERGENCY_ALERTS_ENABLED:Ljava/lang/String; = "semc_pref_key_emergency_alerts_enabled"

.field private static final TAG:Ljava/lang/String; = "Settings"

.field static sInstance:Lcom/sonyericsson/conversations/settings/Settings;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/conversations/settings/Settings;->sInstance:Lcom/sonyericsson/conversations/settings/Settings;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mContext:Landroid/content/Context;

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mContext:Landroid/content/Context;

    .line 284
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 285
    iput-object p1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mContext:Landroid/content/Context;

    .line 287
    :cond_0
    return-void
.end method

.method private static createInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 247
    .local v0, "instance":Lcom/sonyericsson/conversations/settings/Settings;
    const/4 v1, 0x0

    .line 265
    .local v1, "isProviderAvailable":Z
    invoke-static {}, Lcom/sonyericsson/conversations/settings/Settings;->isRroAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 267
    :goto_0
    if-eqz v1, :cond_1

    .line 269
    const-string v2, "Settings"

    const-string v3, "Use cmz provider for settings"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v0, Lcom/sonyericsson/conversations/settings/ProviderSettings;

    .end local v0    # "instance":Lcom/sonyericsson/conversations/settings/Settings;
    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/settings/ProviderSettings;-><init>(Landroid/content/Context;)V

    .line 279
    .restart local v0    # "instance":Lcom/sonyericsson/conversations/settings/Settings;
    :goto_1
    return-object v0

    .line 265
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 274
    :cond_1
    const-string v2, "Settings"

    const-string v3, "Use RRO for settings"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;

    .end local v0    # "instance":Lcom/sonyericsson/conversations/settings/Settings;
    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/settings/ResourceSettings;-><init>(Landroid/content/Context;)V

    .restart local v0    # "instance":Lcom/sonyericsson/conversations/settings/Settings;
    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    const-class v1, Lcom/sonyericsson/conversations/settings/Settings;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 164
    :try_start_0
    const-string v0, "Settings"

    const-string v2, "context is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    const/4 v0, 0x0

    .line 177
    :goto_0
    monitor-exit v1

    return-object v0

    .line 168
    :cond_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/conversations/settings/Settings;->sInstance:Lcom/sonyericsson/conversations/settings/Settings;

    if-nez v0, :cond_1

    .line 169
    invoke-static {p0}, Lcom/sonyericsson/conversations/settings/Settings;->createInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/settings/Settings;->sInstance:Lcom/sonyericsson/conversations/settings/Settings;

    .line 170
    sget-object v0, Lcom/sonyericsson/conversations/settings/Settings;->sInstance:Lcom/sonyericsson/conversations/settings/Settings;

    if-eqz v0, :cond_2

    .line 171
    sget-object v0, Lcom/sonyericsson/conversations/settings/Settings;->sInstance:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/Settings;->init()V

    .line 177
    :cond_1
    :goto_1
    sget-object v0, Lcom/sonyericsson/conversations/settings/Settings;->sInstance:Lcom/sonyericsson/conversations/settings/Settings;

    goto :goto_0

    .line 173
    :cond_2
    const-string v0, "Settings"

    const-string v2, "Create instance failed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isCmzProviderAvailable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 207
    const-class v3, Lcom/sonyericsson/conversations/settings/Settings;

    monitor-enter v3

    const/4 v1, 0x0

    .line 209
    .local v1, "res":Z
    if-eqz p0, :cond_0

    .line 210
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 211
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 212
    const-string v4, "com.sonyericsson.provider.customization"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 217
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    monitor-exit v3

    return v1

    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    move v1, v2

    .line 212
    goto :goto_0

    .line 207
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized isRroAvailable()Z
    .locals 5

    .prologue
    .line 232
    const-class v3, Lcom/sonyericsson/conversations/settings/Settings;

    monitor-enter v3

    const/4 v0, 0x0

    .line 235
    .local v0, "res":Z
    :try_start_0
    const-class v2, Landroid/content/pm/PackageInfo;

    const-string v4, "overlayTarget"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    const/4 v0, 0x1

    .line 241
    :goto_0
    monitor-exit v3

    return v0

    .line 237
    :catch_0
    move-exception v1

    .line 238
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "Settings"

    const-string v4, "overlayTarget field is nonexistent."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 232
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized masterReset(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    const-class v1, Lcom/sonyericsson/conversations/settings/Settings;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 185
    :try_start_0
    const-string v0, "Settings"

    const-string v2, "context is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :goto_0
    monitor-exit v1

    return-void

    .line 189
    :cond_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/conversations/settings/Settings;->sInstance:Lcom/sonyericsson/conversations/settings/Settings;

    if-nez v0, :cond_1

    .line 190
    invoke-static {p0}, Lcom/sonyericsson/conversations/settings/Settings;->createInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/settings/Settings;->sInstance:Lcom/sonyericsson/conversations/settings/Settings;

    .line 193
    :cond_1
    sget-object v0, Lcom/sonyericsson/conversations/settings/Settings;->sInstance:Lcom/sonyericsson/conversations/settings/Settings;

    if-eqz v0, :cond_2

    .line 194
    sget-object v0, Lcom/sonyericsson/conversations/settings/Settings;->sInstance:Lcom/sonyericsson/conversations/settings/Settings;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/Settings;->masterReset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 196
    :cond_2
    :try_start_2
    const-string v0, "Settings"

    const-string v2, "Can not do master reset for sInstance is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract init()V
.end method

.method public abstract masterReset()V
.end method

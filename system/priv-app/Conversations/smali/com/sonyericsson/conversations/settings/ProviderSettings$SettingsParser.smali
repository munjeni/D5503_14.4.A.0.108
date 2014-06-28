.class Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;
.super Ljava/lang/Object;
.source "ProviderSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/settings/ProviderSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsParser"
.end annotation


# static fields
.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_RUNTIME:Ljava/lang/String; = "runtime"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final SETTINGS_NOTIFICATION_ENABLED:Ljava/lang/String; = "notification-enabled"

.field private static final SETTINGS_NOTIFICATION_ENABLED_VISIBILITY:Ljava/lang/String; = "notification-enabled-visibility"

.field private static final SETTING_BUBBLE_ALIGN_REVERSE:Ljava/lang/String; = "bubble-align-reverse"

.field private static final SETTING_CELLBROADCAST_ENABLED:Ljava/lang/String; = "cellbroadcast-enabled"

.field private static final SETTING_CELLBROADCAST_ENABLED_VISIBILITY:Ljava/lang/String; = "cellbroadcast-enabled-visibility"

.field private static final SETTING_CHARACTER_CONVERSION:Ljava/lang/String; = "character-conversion"

.field private static final SETTING_CHARACTER_CONVERSION_VISIBILITY:Ljava/lang/String; = "character-conversion-visibility"

.field private static final SETTING_DELIVERY_REPORT:Ljava/lang/String; = "delivery-report"

.field private static final SETTING_DELIVERY_REPORT_VISIBILITY:Ljava/lang/String; = "delivery-report-visibility"

.field private static final SETTING_DISABLE_MMS:Ljava/lang/String; = "disable-mms"

.field private static final SETTING_ENABLE_ATTACHMENT_INDICATOR:Ljava/lang/String; = "enable-attachment-indicator"

.field private static final SETTING_ENABLE_AUTO_TRIM_LARGE_VIDEO:Ljava/lang/String; = "enable-auto-trim-large-video"

.field private static final SETTING_ENABLE_CITYID:Ljava/lang/String; = "show_cityid"

.field private static final SETTING_ENABLE_COMPOSER_ATTACHMENT_PREVIEW:Ljava/lang/String; = "enable_composer_attachment_preview"

.field private static final SETTING_ENABLE_CONVERSATIONS_LINKIFY:Ljava/lang/String; = "three-digit-number-linkify"

.field private static final SETTING_ENABLE_FORCE_MESSAGE_TYPE:Ljava/lang/String; = "enable-force-message-type"

.field private static final SETTING_ENABLE_MMS_PREVIEW:Ljava/lang/String; = "enable-mms-preview"

.field private static final SETTING_ENABLE_MMS_SUBJECT:Ljava/lang/String; = "enable-mms-subject"

.field private static final SETTING_ENABLE_SAVE_DRAFT_DIALOG:Ljava/lang/String; = "enable-save-draft-dialog"

.field private static final SETTING_ENABLE_SLIDESHOW_EDITOR:Ljava/lang/String; = "enable-slideshow-editor"

.field private static final SETTING_ENABLE_USE_WHITE_THEME:Ljava/lang/String; = "enable-use-white-theme"

.field private static final SETTING_IMAGE_RESOLUTION:Ljava/lang/String; = "mms-image-resolution"

.field private static final SETTING_KEY_ENABLE_AUTO_ADD_SUBJECT:Ljava/lang/String; = "enable-auto-add-subject"

.field private static final SETTING_KEY_ENABLE_DOODLE:Ljava/lang/String; = "enable-doodle"

.field private static final SETTING_KEY_SENDER_NAME_VISIBILITY:Ljava/lang/String; = "show-sender-name"

.field private static final SETTING_KEY_SMSC_EDITABLE_VALUE:Ljava/lang/String; = "smsc-editable-value"

.field private static final SETTING_MAX_RECIPIENTS:Ljava/lang/String; = "max-recipients"

.field private static final SETTING_MIMETYPE_FROM_FILE_EXTENSION:Ljava/lang/String; = "mimetype-from-file-extension"

.field private static final SETTING_MMS_AUTO_RETRIEVAL:Ljava/lang/String; = "mms-auto-retrieval"

.field private static final SETTING_MMS_AUTO_RETRIEVAL_VISIBILITY:Ljava/lang/String; = "mms-auto-retrieval-visibility"

.field private static final SETTING_MMS_MAX_OBJECTS:Ljava/lang/String; = "mms-max-objects"

.field private static final SETTING_MMS_MAX_SIZE:Ljava/lang/String; = "mms-max-size"

.field private static final SETTING_MMS_RETRIEVAL_DURING_ROAMING:Ljava/lang/String; = "mms-retrieval-during-roaming"

.field private static final SETTING_MMS_RETRIEVAL_DURING_ROAMING_VISIBILITY:Ljava/lang/String; = "mms-retrieval-during-roaming-visibility"

.field private static final SETTING_MMS_TRIGGER_PDU_BYTES:Ljava/lang/String; = "mms-trigger-pdu-bytes"

.field private static final SETTING_MMS_TRIGGER_RECIPIENTS:Ljava/lang/String; = "mms-trigger-recipients"

.field private static final SETTING_MMS_TRIGGER_SMS_SEGMENTS:Ljava/lang/String; = "mms-trigger-sms-segments"

.field private static final SETTING_MMS_VERSION:Ljava/lang/String; = "mms-version"

.field private static final SETTING_NOTIFICATION_LED_ENABLED:Ljava/lang/String; = "notification-led-enabled"

.field private static final SETTING_NOTIFICATION_LED_ENABLED_VISIBILITY:Ljava/lang/String; = "notification-led-enabled-visibility"

.field private static final SETTING_NOTIFICATION_RINGTONE:Ljava/lang/String; = "notification-ringtone"

.field private static final SETTING_NOTIFICATION_RINGTONE_VISIBILITY:Ljava/lang/String; = "notification-ringtone-visibility"

.field private static final SETTING_NOTIFICATION_VIBRATION:Ljava/lang/String; = "notification-vibration"

.field private static final SETTING_NOTIFICATION_VIBRATION_VISIBILITY:Ljava/lang/String; = "notification-vibration-visibility"

.field private static final SETTING_SHOW_ENCODING_CHANGED_NOTIFICATION:Ljava/lang/String; = "show_encoding_changed_notification"

.field private static final SETTING_SHOW_PARTICIPANTS_IN_MESSAGE_HEADER:Ljava/lang/String; = "show-participants-in-message-header"

.field private static final SETTING_SMS_MAX_SEGMENTS:Ljava/lang/String; = "sms-max-segments"

.field private static final SETTING_STRICT_PHONENUMBER_COMPARISON_PREFIX:Ljava/lang/String; = "strict-phonenumber-comparison-prefix"

.field private static final SETTING_USE_SC_TIMESTAMP:Ljava/lang/String; = "use-sc-timestamp"

.field private static final SETTING_VIDEO_CONTAINER_FORMAT:Ljava/lang/String; = "mms-video-container-format"

.field private static final TAG_SETTING:Ljava/lang/String; = "setting"

.field private static final TAG_SETTINGS:Ljava/lang/String; = "settings"


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mIsMasterReset:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mVersion:I

.field private mXpp:Lorg/xmlpull/v1/XmlPullParser;

.field final synthetic this$0:Lcom/sonyericsson/conversations/settings/ProviderSettings;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/settings/ProviderSettings;Ljava/io/InputStream;Z)V
    .locals 1
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "isMasterReset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/settings/SettingsException;
        }
    .end annotation

    .prologue
    .line 369
    iput-object p1, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->this$0:Lcom/sonyericsson/conversations/settings/ProviderSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mIsMasterReset:Z

    .line 370
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->createXmlPullParser(Ljava/io/InputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    .line 371
    invoke-direct {p0}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->parseVersion()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mVersion:I

    .line 372
    iput-boolean p3, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mIsMasterReset:Z

    .line 373
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/conversations/settings/ProviderSettings;Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 1
    .param p2, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "isMasterReset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/settings/SettingsException;
        }
    .end annotation

    .prologue
    .line 356
    iput-object p1, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->this$0:Lcom/sonyericsson/conversations/settings/ProviderSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mIsMasterReset:Z

    .line 357
    iput-object p2, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    .line 358
    invoke-direct {p0}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->parseVersion()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mVersion:I

    .line 359
    iput-boolean p3, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mIsMasterReset:Z

    .line 360
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/SharedPreferences;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Landroid/content/SharedPreferences;

    .prologue
    .line 228
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putAndCommitString(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/SharedPreferences;)V

    return-void
.end method

.method private applySetting(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "runtime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 475
    const-string v2, "delivery-report"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 476
    const-string v2, "pref_key_delivery_reports"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    const-string v2, "delivery-report-visibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 478
    const-string v2, "pref_key_delivery_reports_visibility"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 479
    :cond_2
    const-string v2, "mms-auto-retrieval"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 480
    const-string v2, "pref_key_mms_auto_retrieval"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 481
    :cond_3
    const-string v2, "mms-auto-retrieval-visibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 482
    const-string v2, "pref_key_mms_auto_retrieval_visibility"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 483
    :cond_4
    const-string v2, "mms-retrieval-during-roaming"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 484
    const-string v2, "pref_key_mms_retrieval_during_roaming"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 485
    :cond_5
    const-string v2, "mms-retrieval-during-roaming-visibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 486
    const-string v2, "pref_key_mms_retrieval_during_roaming_visibility"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 487
    :cond_6
    const-string v2, "notification-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 488
    const-string v2, "pref_key_enable_notifications"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 489
    :cond_7
    const-string v2, "notification-enabled-visibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 490
    const-string v2, "pref_key_enable_notifications_visibility"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 491
    :cond_8
    const-string v2, "notification-ringtone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 494
    move-object v1, p2

    .line 495
    .local v1, "val":Ljava/lang/String;
    move v0, p3

    .line 496
    .local v0, "rtime":Z
    new-instance v2, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser$1;-><init>(Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 521
    .end local v0    # "rtime":Z
    .end local v1    # "val":Ljava/lang/String;
    :cond_9
    const-string v2, "notification-ringtone-visibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 522
    const-string v2, "pref_key_ringtone_visibility"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 523
    :cond_a
    const-string v2, "notification-vibration"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 524
    const-string v2, "pref_key_vibrate"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 525
    :cond_b
    const-string v2, "notification-vibration-visibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 526
    const-string v2, "pref_key_vibrate_visibility"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 527
    :cond_c
    const-string v2, "max-recipients"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 528
    const-string v2, "semc_pref_key_max_recipients"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putInt(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 529
    :cond_d
    const-string v2, "mms-max-size"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 530
    const-string v2, "semc_pref_key_mms_max_size"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putInt(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 531
    :cond_e
    const-string v2, "mms-max-objects"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 532
    const-string v2, "semc_pref_key_mms_max_objects"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putInt(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 533
    :cond_f
    const-string v2, "sms-max-segments"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 534
    const-string v2, "semc_pref_key_sms_max_segments"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putInt(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 535
    :cond_10
    const-string v2, "mms-trigger-recipients"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 536
    const-string v2, "semc_pref_key_mms_trigger_recipients"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putInt(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 537
    :cond_11
    const-string v2, "mms-trigger-sms-segments"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 538
    const-string v2, "semc_pref_key_mms_trigger_sms_segments"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putInt(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 539
    :cond_12
    const-string v2, "mms-trigger-pdu-bytes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 540
    const-string v2, "semc_pref_key_mms_trigger_pdu_bytes"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putInt(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 541
    :cond_13
    const-string v2, "enable-force-message-type"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 542
    const-string v2, "semc_pref_key_enable_force_message_type"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 543
    :cond_14
    const-string v2, "disable-mms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 544
    const-string v2, "semc_pref_key_disable_mms"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 545
    :cond_15
    const-string v2, "character-conversion"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 546
    const-string v2, "semc_pref_key_character_conversion"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 547
    :cond_16
    const-string v2, "character-conversion-visibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 548
    const-string v2, "semc_pref_key_character_conversion_visibility"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 549
    :cond_17
    const-string v2, "mms-image-resolution"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 550
    const-string v2, "semc_pref_key_image_resolution"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putString(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 551
    :cond_18
    const-string v2, "mms-video-container-format"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 552
    const-string v2, "semc_pref_key_video_container_format"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putString(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 553
    :cond_19
    const-string v2, "enable-mms-subject"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 554
    const-string v2, "semc_pref_key_enable_mms_subject"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 555
    :cond_1a
    const-string v2, "use-sc-timestamp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 556
    const-string v2, "semc_pref_key_use_sc_timestamp"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 557
    :cond_1b
    const-string v2, "enable-slideshow-editor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 558
    const-string v2, "semc_pref_key_enable_slideshow_editor"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 559
    :cond_1c
    const-string v2, "show-participants-in-message-header"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 560
    const-string v2, "semc_pref_key_show_participants_in_message_header"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 561
    :cond_1d
    const-string v2, "mimetype-from-file-extension"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 562
    const-string v2, "semc_pref_key_mimetype_from_file_extension"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 563
    :cond_1e
    const-string v2, "notification-led-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 564
    const-string v2, "semc_pref_key_notification_led_enabled"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 565
    :cond_1f
    const-string v2, "notification-led-enabled-visibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 566
    const-string v2, "semc_pref_key_notification_led_enabled_visibility"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 567
    :cond_20
    const-string v2, "cellbroadcast-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 568
    const-string v2, "semc_pref_key_cellbroadcast-enabled"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 569
    :cond_21
    const-string v2, "cellbroadcast-enabled-visibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 570
    const-string v2, "semc_pref_key_cellbroadcast-enabled_visibility"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 571
    :cond_22
    const-string v2, "enable-save-draft-dialog"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 572
    const-string v2, "semc_pref_key_enable_save_draft_dialog"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 573
    :cond_23
    const-string v2, "enable-mms-preview"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 574
    const-string v2, "semc_pref_key_enable_mms_preview"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 575
    :cond_24
    const-string v2, "enable_composer_attachment_preview"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 576
    const-string v2, "semc_pref_key_enable_composer_attachment_preview"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 577
    :cond_25
    const-string v2, "bubble-align-reverse"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 578
    const-string v2, "semc_pref_key_bubble_align_reverse"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 579
    :cond_26
    const-string v2, "enable-auto-trim-large-video"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 580
    const-string v2, "semc_pref_key_enable_auto_trim_large_video"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 581
    :cond_27
    const-string v2, "three-digit-number-linkify"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 582
    const-string v2, "semc_pref_key_enable_conversations_linkify"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 583
    :cond_28
    const-string v2, "show_cityid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 584
    const-string v2, "semc_pref_key_cityid_enabled"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 585
    :cond_29
    const-string v2, "enable-use-white-theme"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 586
    const-string v2, "semc_pref_key_enable_use_white_theme"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 587
    :cond_2a
    const-string v2, "strict-phonenumber-comparison-prefix"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 588
    const-string v2, "semc_pref_key_strict_phonenumber_comparison_prefix"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putString(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 589
    :cond_2b
    const-string v2, "enable-auto-add-subject"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 590
    const-string v2, "semc_pref_key_enable_auto_add_subject"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 591
    :cond_2c
    const-string v2, "mms-version"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 592
    const-string v2, "semc_pref_key_mms_version"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putInt(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 593
    :cond_2d
    const-string v2, "enable-attachment-indicator"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 594
    const-string v2, "semc_pref_key_enable_attachment_indicator"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 595
    :cond_2e
    const-string v2, "enable-doodle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 596
    const-string v2, "semc_pref_key_enable_doodle"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 597
    :cond_2f
    const-string v2, "show-sender-name"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 598
    const-string v2, "semc_pref_key_sender_name_visibility"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 599
    :cond_30
    const-string v2, "emergency_alerts_enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 600
    const-string v2, "emergency_alerts_enabled"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 601
    :cond_31
    const-string v2, "smsc-editable-value"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 602
    const-string v2, "semc_pref_key_smsc_editable_value"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putInt(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 603
    :cond_32
    const-string v2, "show_encoding_changed_notification"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 604
    const-string v2, "semc_pref_key_show_encoding_changed_notification"

    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private createXmlPullParser(Ljava/io/InputStream;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/settings/SettingsException;
        }
    .end annotation

    .prologue
    .line 377
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 378
    .local v1, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 380
    return-object v1

    .line 381
    .end local v1    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lcom/sonyericsson/conversations/settings/SettingsException;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/settings/SettingsException;-><init>()V

    throw v2

    .line 383
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/sonyericsson/conversations/settings/SettingsException;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/settings/SettingsException;-><init>()V

    throw v2
.end method

.method private parseVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/settings/SettingsException;
        }
    .end annotation

    .prologue
    .line 396
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 398
    .local v0, "e":I
    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 399
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x0

    const-string v4, "version"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "version":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 408
    .end local v1    # "version":Ljava/lang/String;
    :goto_1
    return v2

    .line 405
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 408
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 409
    .end local v0    # "e":I
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/sonyericsson/conversations/settings/SettingsException;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/settings/SettingsException;-><init>()V

    throw v2
.end method

.method private putAndCommitString(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/SharedPreferences;)V
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "runtime"    # Z
    .param p4, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 610
    if-eqz p3, :cond_0

    invoke-interface {p4, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mIsMasterReset:Z

    if-eqz v1, :cond_1

    .line 611
    :cond_0
    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 612
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 613
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 615
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method private putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "runtime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 632
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mIsMasterReset:Z

    if-eqz v1, :cond_1

    .line 635
    :cond_0
    const-string v1, "true"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 636
    const/4 v0, 0x1

    .line 642
    .local v0, "b":Z
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 644
    .end local v0    # "b":Z
    :cond_1
    return-void

    .line 637
    :cond_2
    const-string v1, "false"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 638
    const/4 v0, 0x0

    .restart local v0    # "b":Z
    goto :goto_0

    .line 640
    .end local v0    # "b":Z
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private putInt(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "runtime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 625
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mIsMasterReset:Z

    if-eqz v0, :cond_1

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 628
    :cond_1
    return-void
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "runtime"    # Z

    .prologue
    .line 618
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 621
    :cond_1
    return-void
.end method


# virtual methods
.method public apply(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 10
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "editor"    # Landroid/content/SharedPreferences$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/settings/SettingsException;
        }
    .end annotation

    .prologue
    .line 436
    iput-object p1, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mPrefs:Landroid/content/SharedPreferences;

    .line 437
    iput-object p2, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 440
    :try_start_0
    iget-object v7, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 442
    .local v0, "e":I
    :goto_0
    const/4 v7, 0x1

    if-eq v0, v7, :cond_1

    .line 443
    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    iget-object v7, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "setting"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 444
    iget-object v7, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    const-string v9, "key"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    const-string v9, "runtime"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 447
    .local v4, "runtime":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 449
    const/4 v7, 0x4

    if-ne v0, v7, :cond_0

    .line 450
    iget-object v7, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v5

    .line 453
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 454
    :try_start_1
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-direct {p0, v3, v5, v7}, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->applySetting(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 462
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "runtime":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    :try_start_2
    iget-object v7, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 456
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "runtime":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 457
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    const-string v7, "ProviderSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal value in cmz: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 464
    .end local v0    # "e":I
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "runtime":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 465
    .local v6, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v7, Lcom/sonyericsson/conversations/settings/SettingsException;

    invoke-direct {v7}, Lcom/sonyericsson/conversations/settings/SettingsException;-><init>()V

    throw v7

    .line 466
    .end local v6    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v2

    .line 467
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v7, Lcom/sonyericsson/conversations/settings/SettingsException;

    invoke-direct {v7}, Lcom/sonyericsson/conversations/settings/SettingsException;-><init>()V

    throw v7

    .line 468
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 469
    .local v1, "iae":Ljava/lang/RuntimeException;
    new-instance v7, Lcom/sonyericsson/conversations/settings/SettingsException;

    invoke-direct {v7}, Lcom/sonyericsson/conversations/settings/SettingsException;-><init>()V

    throw v7

    .line 471
    .end local v1    # "iae":Ljava/lang/RuntimeException;
    .restart local v0    # "e":I
    :cond_1
    return-void
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/sonyericsson/conversations/settings/ProviderSettings$SettingsParser;->mVersion:I

    return v0
.end method

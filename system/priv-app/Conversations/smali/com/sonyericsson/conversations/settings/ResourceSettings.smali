.class Lcom/sonyericsson/conversations/settings/ResourceSettings;
.super Lcom/sonyericsson/conversations/settings/Settings;
.source "ResourceSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx;
    }
.end annotation


# static fields
.field private static final RUNTIME_SETTINGS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SIMPLE_SETTINGS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ResourceSettings"


# instance fields
.field private mRuntimeManager:Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;

.field private mSimpleManager:Lcom/sonyericsson/conversations/settings/SimpleSettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x7f080003

    .line 328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    .line 329
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->RUNTIME_SETTINGS:Ljava/util/HashMap;

    .line 332
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->RUNTIME_SETTINGS:Ljava/util/HashMap;

    const-string v1, "pref_key_delivery_reports"

    const v2, 0x7f080006

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->RUNTIME_SETTINGS:Ljava/util/HashMap;

    const-string v1, "pref_key_mms_auto_retrieval"

    const v2, 0x7f080008

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->RUNTIME_SETTINGS:Ljava/util/HashMap;

    const-string v1, "pref_key_mms_retrieval_during_roaming"

    const v2, 0x7f08000a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->RUNTIME_SETTINGS:Ljava/util/HashMap;

    const-string v1, "pref_key_ringtone"

    const v2, 0x7f070004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->RUNTIME_SETTINGS:Ljava/util/HashMap;

    const-string v1, "pref_key_vibrate"

    const v2, 0x7f08000d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->RUNTIME_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_character_conversion"

    const v2, 0x7f080011

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->RUNTIME_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_cellbroadcast-enabled"

    const v2, 0x7f08001f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->RUNTIME_SETTINGS:Ljava/util/HashMap;

    const-string v1, "pref_key_enable_notifications"

    const v2, 0x7f080021

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->RUNTIME_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_notification_led_enabled"

    const v2, 0x7f080023

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "pref_key_delivery_reports_visibility"

    const v2, 0x7f080007

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "pref_key_mms_auto_retrieval_visibility"

    const v2, 0x7f080009

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "pref_key_mms_retrieval_during_roaming_visibility"

    const v2, 0x7f08000b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "pref_key_ringtone_visibility"

    const v2, 0x7f08000c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "pref_key_vibrate_visibility"

    const v2, 0x7f08000e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_character_conversion_visibility"

    const v2, 0x7f080012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_cellbroadcast-enabled_visibility"

    const v2, 0x7f080020

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "pref_key_enable_notifications_visibility"

    const v2, 0x7f080022

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_notification_led_enabled_visibility"

    const v2, 0x7f080024

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_mms_interval"

    const/high16 v2, 0x7f070000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_enable_conversations_linkify"

    const/high16 v2, 0x7f080000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_mms_max_text_size"

    const/high16 v2, 0x7f090000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_enable_mms_preview"

    const v2, 0x7f080001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_enable_composer_attachment_preview"

    const v2, 0x7f080002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_enable_save_draft_dialog"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_mimetype_from_file_extension"

    const v2, 0x7f080004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_video_container_format"

    const v2, 0x7f070001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_mms_http_header"

    const v2, 0x7f070002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_use_sc_timestamp"

    const v2, 0x7f080005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_strict_phonenumber_comparison_prefix"

    const v2, 0x7f070003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_max_recipients"

    const v2, 0x7f090001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_mms_max_size"

    const v2, 0x7f090002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_sms_max_segments"

    const v2, 0x7f090003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_mms_trigger_recipients"

    const v2, 0x7f090004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_mms_trigger_sms_segments"

    const v2, 0x7f090005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_enable_force_message_type"

    const v2, 0x7f080010

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_disable_mms"

    const v2, 0x7f080013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_mms_trigger_pdu_bytes"

    const v2, 0x7f090007

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_enable_slideshow_editor"

    const v2, 0x7f080014

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_enable_mms_subject"

    const v2, 0x7f080015

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_image_resolution"

    const v2, 0x7f070005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_mms_version"

    const v2, 0x7f090006

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_enable_attachment_indicator"

    const v2, 0x7f08000f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_show_participants_in_message_header"

    const v2, 0x7f080016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_mms_max_objects"

    const v2, 0x7f090008

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_enable_use_white_theme"

    const v2, 0x7f080017

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_enable_doodle"

    const v2, 0x7f080019

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_sender_name_visibility"

    const v2, 0x7f08001a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_ct_feature_enabled"

    const v2, 0x7f08001b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_sms_original_address_pattern"

    const v2, 0x7f070006

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_sms_original_address_replacement"

    const v2, 0x7f070007

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_smsc_editable_value"

    const v2, 0x7f090009

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_enable_ignore_class_2_sms"

    const v2, 0x7f08001c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_enable_total_count"

    const v2, 0x7f08001d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_show_encoding_changed_notification"

    const v2, 0x7f08001e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_bubble_align_reverse"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_enable_auto_trim_large_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_cityid_enabled"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "semc_pref_key_enable_auto_add_subject"

    const v2, 0x7f080018

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    const-string v1, "emergency_alerts_enabled"

    const v2, 0x7f080025

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 460
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/settings/Settings;-><init>(Landroid/content/Context;)V

    .line 324
    iput-object v0, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->mRuntimeManager:Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;

    .line 326
    iput-object v0, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->mSimpleManager:Lcom/sonyericsson/conversations/settings/SimpleSettingsManager;

    .line 461
    new-instance v0, Lcom/sonyericsson/conversations/settings/SimpleSettingsManager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/conversations/settings/ResourceSettings;->SIMPLE_SETTINGS:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/settings/SimpleSettingsManager;-><init>(Landroid/content/res/Resources;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->mSimpleManager:Lcom/sonyericsson/conversations/settings/SimpleSettingsManager;

    .line 462
    new-instance v0, Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx;

    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/Settings;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sonyericsson/conversations/settings/ResourceSettings;->RUNTIME_SETTINGS:Ljava/util/HashMap;

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/conversations/settings/ResourceSettings$RuntimeSettingsManagerEx;-><init>(Lcom/sonyericsson/conversations/settings/ResourceSettings;Landroid/content/Context;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->mRuntimeManager:Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;

    .line 463
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 481
    move v0, p2

    .line 483
    .local v0, "res":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 484
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->mSimpleManager:Lcom/sonyericsson/conversations/settings/SimpleSettingsManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->containKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->mSimpleManager:Lcom/sonyericsson/conversations/settings/SimpleSettingsManager;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/conversations/settings/SimpleSettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 495
    :goto_0
    return v0

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->mRuntimeManager:Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->containKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->mRuntimeManager:Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 489
    :cond_1
    const-string v1, "ResourceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such a setting key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 492
    :cond_2
    const-string v1, "ResourceSettings"

    const-string v2, "The key is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 500
    move v0, p2

    .line 502
    .local v0, "res":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 503
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->mSimpleManager:Lcom/sonyericsson/conversations/settings/SimpleSettingsManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->containKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->mSimpleManager:Lcom/sonyericsson/conversations/settings/SimpleSettingsManager;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/conversations/settings/SimpleSettingsManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 514
    :goto_0
    return v0

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->mRuntimeManager:Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->containKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 506
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->mRuntimeManager:Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 508
    :cond_1
    const-string v1, "ResourceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such a setting key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 511
    :cond_2
    const-string v1, "ResourceSettings"

    const-string v2, "The key is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 519
    move-object v0, p2

    .line 521
    .local v0, "res":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 522
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->mSimpleManager:Lcom/sonyericsson/conversations/settings/SimpleSettingsManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->containKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->mSimpleManager:Lcom/sonyericsson/conversations/settings/SimpleSettingsManager;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/conversations/settings/SimpleSettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    :goto_0
    return-object v0

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->mRuntimeManager:Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->containKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->mRuntimeManager:Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 527
    :cond_1
    const-string v1, "ResourceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such a setting key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 530
    :cond_2
    const-string v1, "ResourceSettings"

    const-string v2, "The key is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/settings/ResourceSettings;->init(Landroid/content/Context;Z)V

    .line 472
    return-void
.end method

.method protected init(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isMasterReset"    # Z

    .prologue
    .line 466
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/ResourceSettings;->mRuntimeManager:Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/conversations/settings/RuntimeSettingsManager;->init(Z)V

    .line 467
    return-void
.end method

.method public masterReset()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/Settings;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/settings/ResourceSettings;->init(Landroid/content/Context;Z)V

    .line 477
    return-void
.end method

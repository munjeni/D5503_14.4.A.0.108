.class public Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;
.super Ljava/lang/Object;
.source "GoogleAnalyticsUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sGaHelper:Lcom/sonymobile/gahelper/GaHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sGaHelper:Lcom/sonymobile/gahelper/GaHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Action;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Label;)V
    .locals 2
    .param p0, "category"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;
    .param p1, "action"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Action;
    .param p2, "label"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Label;

    .prologue
    .line 125
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Action;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Label;J)V

    .line 126
    return-void
.end method

.method public static sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Action;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Label;J)V
    .locals 2
    .param p0, "category"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;
    .param p1, "action"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Action;
    .param p2, "label"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Label;
    .param p3, "value"    # J

    .prologue
    const/4 v1, 0x0

    .line 129
    if-nez p1, :cond_0

    move-object v0, v1

    .line 130
    .local v0, "strAction":Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_1

    .line 132
    .local v1, "strLabel":Ljava/lang/String;
    :goto_1
    invoke-static {p0, v0, v1, p3, p4}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    .line 133
    return-void

    .line 129
    .end local v0    # "strAction":Ljava/lang/String;
    .end local v1    # "strLabel":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    .restart local v0    # "strAction":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "category"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 136
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    .line 137
    return-void
.end method

.method public static sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p0, "category"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 144
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 146
    return-void
.end method

.method public static sendRecordingEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;J)V
    .locals 3
    .param p0, "screen"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;
    .param p1, "recordingTime"    # J

    .prologue
    .line 120
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->CAPTURE_PROCEDURE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureProcedure;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureProcedure;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1, p2}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    .line 122
    return-void
.end method

.method public static sendThermalEvent(ZZ)V
    .locals 3
    .param p0, "isOnStartup"    # Z
    .param p1, "isRecording"    # Z

    .prologue
    .line 112
    if-eqz p0, :cond_0

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ThermalMitigation;->FAIL_TO_START:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ThermalMitigation;

    .line 114
    .local v1, "thrmalMitigation":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ThermalMitigation;
    :goto_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;->DURING_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;

    .line 116
    .local v0, "forceQuit":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;
    :goto_1
    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->THERMAL_MITIGATION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    invoke-static {v2, v1, v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Action;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Label;)V

    .line 117
    return-void

    .line 112
    .end local v0    # "forceQuit":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;
    .end local v1    # "thrmalMitigation":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ThermalMitigation;
    :cond_0
    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ThermalMitigation;->FORCE_QUIT:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ThermalMitigation;

    goto :goto_0

    .line 114
    .restart local v1    # "thrmalMitigation":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ThermalMitigation;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static sendView(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;)V
    .locals 2
    .param p0, "screen"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    .prologue
    .line 104
    if-nez p0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sGaHelper:Lcom/sonymobile/gahelper/GaHelper;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/sonymobile/gahelper/GaHelper;

    invoke-direct {v0, p0}, Lcom/sonymobile/gahelper/GaHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sGaHelper:Lcom/sonymobile/gahelper/GaHelper;

    .line 47
    :cond_0
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sGaHelper:Lcom/sonymobile/gahelper/GaHelper;

    invoke-virtual {v0}, Lcom/sonymobile/gahelper/GaHelper;->readAndSetGaEnabled()V

    .line 49
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->setContext(Landroid/content/Context;)V

    .line 50
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;->BUILD_MODEL:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->BUILD_MODEL:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->setCustomDimension(Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;)V

    .line 51
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;->BUILD_ID:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->BUILD_ID:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->setCustomDimension(Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;)V

    .line 52
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;->SAMPLE_RATE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->SAMPLE_RATE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->setCustomDimension(Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;)V

    .line 53
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;->BUILD_TYPE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->BUILD_TYPE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->setCustomDimension(Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;)V

    .line 54
    return-void
.end method

.method public static setCustomDimension(Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;)V
    .locals 3
    .param p0, "index"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;
    .param p1, "value"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    .prologue
    .line 99
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 100
    return-void
.end method

.method public static setLaunchedFrom(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;Landroid/content/Intent;ZZ)V
    .locals 4
    .param p0, "launchedBy"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isSamePackage"    # Z
    .param p3, "isOneShot"    # Z

    .prologue
    .line 61
    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->OTHER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    .line 62
    .local v2, "value":Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;
    sget-object v3, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    if-ne p0, v3, :cond_0

    .line 63
    const-string v3, "com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    .line 64
    .local v1, "hasExtra":Z
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    .line 69
    .local v0, "hasCategory":Z
    if-eqz p2, :cond_1

    .line 70
    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->SAME_PACKAGE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    .line 79
    .end local v0    # "hasCategory":Z
    .end local v1    # "hasExtra":Z
    :cond_0
    :goto_0
    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;->LAUNCHED_FROM:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    invoke-static {v3, v2}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->setCustomDimension(Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;)V

    .line 80
    return-void

    .line 71
    .restart local v0    # "hasCategory":Z
    .restart local v1    # "hasExtra":Z
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 72
    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->MODE_SELECTOR:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    goto :goto_0

    .line 73
    :cond_2
    if-eqz p3, :cond_3

    .line 74
    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->ONE_SHOT_APP:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    goto :goto_0

    .line 76
    :cond_3
    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->HOME:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    goto :goto_0
.end method

.method public static trackActivityStart(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 86
    return-void
.end method

.method public static trackActivityStop(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 91
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sGaHelper:Lcom/sonymobile/gahelper/GaHelper;

    .line 93
    return-void
.end method

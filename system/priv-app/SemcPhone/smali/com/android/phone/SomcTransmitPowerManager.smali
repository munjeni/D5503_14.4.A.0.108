.class public Lcom/android/phone/SomcTransmitPowerManager;
.super Landroid/content/BroadcastReceiver;
.source "SomcTransmitPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcTransmitPowerManager$1;,
        Lcom/android/phone/SomcTransmitPowerManager$StateInfo;
    }
.end annotation


# static fields
.field private static final WIFI_CONDITION_AND_SENSOR_OFF_BATTERY_LEVELS:[I

.field private static final WIFI_CONDITION_OR_SENSOR_ON_BATTERY_LEVELS:[I

.field private static sBackOffForceControlState:I

.field private static sPowerLevel:I

.field private static sState:Lcom/android/phone/SomcTransmitPowerManager$StateInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 30
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/SomcTransmitPowerManager;->WIFI_CONDITION_OR_SENSOR_ON_BATTERY_LEVELS:[I

    .line 34
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/SomcTransmitPowerManager;->WIFI_CONDITION_AND_SENSOR_OFF_BATTERY_LEVELS:[I

    .line 45
    sput v1, Lcom/android/phone/SomcTransmitPowerManager;->sPowerLevel:I

    .line 52
    sput v1, Lcom/android/phone/SomcTransmitPowerManager;->sBackOffForceControlState:I

    .line 71
    new-instance v0, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;-><init>(Lcom/android/phone/SomcTransmitPowerManager$1;)V

    sput-object v0, Lcom/android/phone/SomcTransmitPowerManager;->sState:Lcom/android/phone/SomcTransmitPowerManager$StateInfo;

    return-void

    .line 30
    nop

    :array_0
    .array-data 4
        0x4
        0x3
    .end array-data

    .line 34
    :array_1
    .array-data 4
        0x6
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 73
    return-void
.end method

.method private getBatteryVoltageLevel(ILandroid/content/Context;)I
    .locals 10
    .param p1, "value"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 246
    if-ltz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v5, v7

    .line 302
    :cond_1
    :goto_0
    return v5

    .line 250
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/phone/SomcTransmitPowerManager;->getBatteryVoltageThresholds(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "strThresholdArray":[Ljava/lang/String;
    if-eqz v3, :cond_3

    array-length v8, v3

    if-nez v8, :cond_5

    .line 254
    :cond_3
    sget-boolean v8, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v8, :cond_4

    .line 255
    const-string v8, "SomcTransmitPowerManager"

    const-string v9, "return error if threshold is empty."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v5, v7

    .line 257
    goto :goto_0

    .line 261
    :cond_5
    const/4 v4, 0x0

    .line 262
    .local v4, "strThresholdCnt":I
    const/4 v5, 0x0

    .line 265
    .local v5, "thresholdArraySize":I
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_6

    move v5, v7

    .line 266
    goto :goto_0

    .line 267
    :cond_6
    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_7

    .line 268
    add-int/lit8 v4, v4, 0x1

    .line 269
    array-length v5, v3

    .line 274
    :goto_1
    new-array v2, v5, [I

    .line 277
    .local v2, "iThresholdLevelArray":[I
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v2, v8

    .line 280
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    array-length v8, v3

    if-ge v4, v8, :cond_8

    .line 281
    aget-object v8, v3, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v2, v1

    .line 280
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 271
    .end local v1    # "i":I
    .end local v2    # "iThresholdLevelArray":[I
    :cond_7
    array-length v8, v3

    add-int/lit8 v5, v8, 0x1

    goto :goto_1

    .line 285
    .restart local v1    # "i":I
    .restart local v2    # "iThresholdLevelArray":[I
    :cond_8
    add-int/lit8 v8, v5, -0x1

    aget v8, v2, v8

    if-ge p1, v8, :cond_1

    .line 289
    const/4 v6, 0x1

    .local v6, "thresholdLevel":I
    :goto_3
    if-ge v6, v5, :cond_b

    .line 290
    aget v8, v2, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge p1, v8, :cond_9

    move v5, v6

    .line 291
    goto :goto_0

    .line 289
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 294
    .end local v1    # "i":I
    .end local v2    # "iThresholdLevelArray":[I
    .end local v6    # "thresholdLevel":I
    :catch_0
    move-exception v0

    .line 295
    .local v0, "ex":Ljava/lang/NumberFormatException;
    sget-boolean v8, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v8, :cond_a

    .line 296
    const-string v8, "SomcTransmitPowerManager"

    const-string v9, "Preferences value can\'t be parsed as an integer value."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v5, v7

    .line 298
    goto :goto_0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v1    # "i":I
    .restart local v2    # "iThresholdLevelArray":[I
    .restart local v6    # "thresholdLevel":I
    :cond_b
    move v5, v7

    .line 302
    goto :goto_0
.end method

.method private getBatteryVoltageThresholds(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 319
    if-nez p1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-object v1

    .line 322
    :cond_1
    const-string v3, "somc_battery_voltage_pref"

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 324
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v3, "battery_voltage_key"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "threshold":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 328
    const-string v3, "4000"

    invoke-direct {p0, v3, p1}, Lcom/android/phone/SomcTransmitPowerManager;->setBatteryVoltageThresholdsValue(Ljava/lang/String;Landroid/content/Context;)V

    .line 329
    const-string v2, "4000"

    .line 332
    :cond_2
    const/4 v1, 0x0

    .line 335
    .local v1, "strThresholdArray":[Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 336
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v3, :cond_0

    .line 337
    const-string v3, "SomcTransmitPowerManager"

    const-string v4, "return null if threshold is empty."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    :cond_3
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 343
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 346
    :cond_4
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .end local v1    # "strThresholdArray":[Ljava/lang/String;
    aput-object v2, v1, v5

    .restart local v1    # "strThresholdArray":[Ljava/lang/String;
    goto :goto_0
.end method

.method private setBatteryVoltageThresholdsValue(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p1, "voltage"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    if-nez p2, :cond_0

    .line 228
    :goto_0
    return-void

    .line 223
    :cond_0
    const-string v2, "somc_battery_voltage_pref"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 225
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 226
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "battery_voltage_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 227
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static setTransmitPowerByState()V
    .locals 6

    .prologue
    .line 186
    sget-object v3, Lcom/android/phone/SomcTransmitPowerManager;->sState:Lcom/android/phone/SomcTransmitPowerManager$StateInfo;

    # getter for: Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->batteryLevel:I
    invoke-static {v3}, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->access$200(Lcom/android/phone/SomcTransmitPowerManager$StateInfo;)I

    move-result v3

    if-nez v3, :cond_1

    .line 210
    .local v0, "levels":[I
    .local v2, "powerLevel":I
    :cond_0
    :goto_0
    return-void

    .line 188
    .end local v0    # "levels":[I
    .end local v2    # "powerLevel":I
    :cond_1
    const/4 v0, 0x0

    .line 189
    .restart local v0    # "levels":[I
    sget-object v3, Lcom/android/phone/SomcTransmitPowerManager;->sState:Lcom/android/phone/SomcTransmitPowerManager$StateInfo;

    # invokes: Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->isPowerControlRequired()Z
    invoke-static {v3}, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->access$700(Lcom/android/phone/SomcTransmitPowerManager$StateInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 190
    sget-object v0, Lcom/android/phone/SomcTransmitPowerManager;->WIFI_CONDITION_OR_SENSOR_ON_BATTERY_LEVELS:[I

    .line 194
    :goto_1
    sget-object v3, Lcom/android/phone/SomcTransmitPowerManager;->sState:Lcom/android/phone/SomcTransmitPowerManager$StateInfo;

    # getter for: Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->batteryLevel:I
    invoke-static {v3}, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->access$200(Lcom/android/phone/SomcTransmitPowerManager$StateInfo;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v0, v3

    .line 195
    .restart local v2    # "powerLevel":I
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v3, :cond_2

    .line 196
    const-string v3, "SomcTransmitPowerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Old PowerLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/phone/SomcTransmitPowerManager;->sPowerLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current PowerLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_2
    sget v3, Lcom/android/phone/SomcTransmitPowerManager;->sPowerLevel:I

    if-eq v3, v2, :cond_0

    .line 200
    sput v2, Lcom/android/phone/SomcTransmitPowerManager;->sPowerLevel:I

    .line 201
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 204
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "SomcTransmitPowerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting transmit power to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_3
    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setTransmitPower(ILandroid/os/Message;)V

    goto :goto_0

    .line 192
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v2    # "powerLevel":I
    :cond_4
    sget-object v0, Lcom/android/phone/SomcTransmitPowerManager;->WIFI_CONDITION_AND_SENSOR_OFF_BATTERY_LEVELS:[I

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080032

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 117
    .local v3, "isRFPowerBackoffEnabled":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080035

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 120
    .local v4, "isWifiDirectEnabled":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080036

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 123
    .local v2, "isPSensorEnabled":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080037

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 126
    .local v5, "isWifiTetheringEnabled":Z
    const-string v9, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 127
    if-nez v5, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    sget-object v7, Lcom/android/phone/SomcTransmitPowerManager;->sState:Lcom/android/phone/SomcTransmitPowerManager$StateInfo;

    const-string v8, "wifi_state"

    const/16 v9, 0xe

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    # setter for: Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->wifiApState:I
    invoke-static {v7, v8}, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->access$102(Lcom/android/phone/SomcTransmitPowerManager$StateInfo;I)I

    .line 178
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/phone/SomcTransmitPowerManager;->setTransmitPowerByState()V

    goto :goto_0

    .line 132
    :cond_3
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 133
    const-string v7, "voltage"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 134
    .local v6, "voltage":I
    sget-object v7, Lcom/android/phone/SomcTransmitPowerManager;->sState:Lcom/android/phone/SomcTransmitPowerManager$StateInfo;

    invoke-direct {p0, v6, p1}, Lcom/android/phone/SomcTransmitPowerManager;->getBatteryVoltageLevel(ILandroid/content/Context;)I

    move-result v8

    # setter for: Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->batteryLevel:I
    invoke-static {v7, v8}, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->access$202(Lcom/android/phone/SomcTransmitPowerManager$StateInfo;I)I

    goto :goto_1

    .line 135
    .end local v6    # "voltage":I
    :cond_4
    const-string v9, "com.sonymobile.intent.action.RFPOWER_BACKOFF_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 136
    if-eqz v3, :cond_0

    .line 139
    sget v7, Lcom/android/phone/SomcTransmitPowerManager;->sBackOffForceControlState:I

    if-nez v7, :cond_2

    .line 140
    sget-object v7, Lcom/android/phone/SomcTransmitPowerManager;->sState:Lcom/android/phone/SomcTransmitPowerManager$StateInfo;

    const-string v9, "RFPOWER_BACKOFF_STATE"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    # setter for: Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->isRFPowerBackoffTriggerOn:Z
    invoke-static {v7, v8}, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->access$302(Lcom/android/phone/SomcTransmitPowerManager$StateInfo;Z)Z

    goto :goto_1

    .line 143
    :cond_5
    const-string v9, "com.sonymobile.phone.intent.action.RFPOWER_BACKOFF_CONTROL_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 144
    if-eqz v3, :cond_0

    .line 147
    const-string v9, "RFPOWER_BACKOFF_CONTROL_STATE"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/android/phone/SomcTransmitPowerManager;->sBackOffForceControlState:I

    .line 149
    sget v9, Lcom/android/phone/SomcTransmitPowerManager;->sBackOffForceControlState:I

    if-eqz v9, :cond_2

    .line 150
    sget-object v9, Lcom/android/phone/SomcTransmitPowerManager;->sState:Lcom/android/phone/SomcTransmitPowerManager$StateInfo;

    sget v10, Lcom/android/phone/SomcTransmitPowerManager;->sBackOffForceControlState:I

    if-ne v10, v7, :cond_6

    :goto_2
    # setter for: Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->isRFPowerBackoffTriggerOn:Z
    invoke-static {v9, v7}, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->access$302(Lcom/android/phone/SomcTransmitPowerManager$StateInfo;Z)Z

    goto :goto_1

    :cond_6
    move v7, v8

    goto :goto_2

    .line 153
    :cond_7
    const-string v9, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 154
    if-eqz v4, :cond_0

    .line 157
    sget-object v8, Lcom/android/phone/SomcTransmitPowerManager;->sState:Lcom/android/phone/SomcTransmitPowerManager$StateInfo;

    const-string v9, "discoveryState"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    # setter for: Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->wifiP2pDiscoveryState:I
    invoke-static {v8, v7}, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->access$402(Lcom/android/phone/SomcTransmitPowerManager$StateInfo;I)I

    goto :goto_1

    .line 159
    :cond_8
    const-string v7, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 160
    if-eqz v4, :cond_0

    .line 163
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 165
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_9

    .line 166
    sget-object v7, Lcom/android/phone/SomcTransmitPowerManager;->sState:Lcom/android/phone/SomcTransmitPowerManager$StateInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    # setter for: Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->isWifiP2pConnected:Z
    invoke-static {v7, v8}, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->access$502(Lcom/android/phone/SomcTransmitPowerManager$StateInfo;Z)Z

    goto/16 :goto_1

    .line 169
    :cond_9
    sget-object v7, Lcom/android/phone/SomcTransmitPowerManager;->sState:Lcom/android/phone/SomcTransmitPowerManager$StateInfo;

    # setter for: Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->isWifiP2pConnected:Z
    invoke-static {v7, v8}, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->access$502(Lcom/android/phone/SomcTransmitPowerManager$StateInfo;Z)Z

    goto/16 :goto_1

    .line 171
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_a
    const-string v7, "com.sonymobile.phone.intent.action.P_SENSOR_STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 172
    if-eqz v2, :cond_0

    .line 175
    sget-object v7, Lcom/android/phone/SomcTransmitPowerManager;->sState:Lcom/android/phone/SomcTransmitPowerManager$StateInfo;

    const-string v9, "P_SENSOR_STATE"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    # setter for: Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->isPsensorOn:Z
    invoke-static {v7, v8}, Lcom/android/phone/SomcTransmitPowerManager$StateInfo;->access$602(Lcom/android/phone/SomcTransmitPowerManager$StateInfo;Z)Z

    goto/16 :goto_1
.end method

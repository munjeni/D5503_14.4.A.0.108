.class Lcom/android/server/ServerThread;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final deviceHasSufficientMemory()Z
    .locals 7

    .prologue
    .line 1187
    const-wide/32 v0, 0x20000000

    .line 1189
    .local v0, "MEMORY_SIZE_MIN":J
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 1190
    .local v2, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 1191
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v3

    const-wide/32 v5, 0x20000000

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 1192
    const/4 v3, 0x0

    .line 1194
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1180
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1183
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1184
    return-void
.end method


# virtual methods
.method public initAndLoop()V
    .locals 170

    .prologue
    .line 108
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 111
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 113
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 116
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 117
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 121
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v146

    .line 123
    .local v146, "shutdownAction":Ljava/lang/String;
    if-eqz v146, :cond_0

    invoke-virtual/range {v146 .. v146}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 124
    const/4 v7, 0x0

    move-object/from16 v0, v146

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_26

    const/16 v140, 0x1

    .line 127
    .local v140, "reboot":Z
    :goto_0
    invoke-virtual/range {v146 .. v146}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_27

    .line 128
    const/4 v7, 0x1

    invoke-virtual/range {v146 .. v146}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v146

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v139

    .line 133
    .local v139, "reason":Ljava/lang/String;
    :goto_1
    move/from16 v0, v140

    move-object/from16 v1, v139

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 137
    .end local v139    # "reason":Ljava/lang/String;
    .end local v140    # "reboot":Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v105

    .line 138
    .local v105, "factoryTestStr":Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v105

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    const/16 v104, 0x0

    .line 140
    .local v104, "factoryTest":I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 142
    .local v33, "headless":Z
    const/16 v110, 0x0

    .line 143
    .local v110, "installer":Lcom/android/server/pm/Installer;
    const/16 v63, 0x0

    .line 144
    .local v63, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v82, 0x0

    .line 145
    .local v82, "contentService":Lcom/android/server/content/ContentService;
    const/16 v112, 0x0

    .line 146
    .local v112, "lights":Lcom/android/server/LightsService;
    const/4 v4, 0x0

    .line 147
    .local v4, "power":Lcom/android/server/power/PowerManagerService;
    const/16 v97, 0x0

    .line 148
    .local v97, "display":Lcom/android/server/display/DisplayManagerService;
    const/16 v71, 0x0

    .line 149
    .local v71, "battery":Lcom/android/server/BatteryService;
    const/16 v159, 0x0

    .line 150
    .local v159, "vibrator":Lcom/android/server/VibratorService;
    const/16 v65, 0x0

    .line 151
    .local v65, "alarm":Lcom/android/server/AlarmManagerService;
    const/16 v120, 0x0

    .line 152
    .local v120, "mountService":Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 153
    .local v30, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 154
    .local v29, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v124, 0x0

    .line 155
    .local v124, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v78, 0x0

    .line 156
    .local v78, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v135, 0x0

    .line 157
    .local v135, "qcCon":Ljava/lang/Object;
    const/16 v166, 0x0

    .line 158
    .local v166, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v164, 0x0

    .line 159
    .local v164, "wifi":Lcom/android/server/wifi/WifiService;
    const/16 v145, 0x0

    .line 160
    .local v145, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v130, 0x0

    .line 161
    .local v130, "pm":Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 162
    .local v5, "context":Landroid/content/Context;
    const/16 v168, 0x0

    .line 163
    .local v168, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v72, 0x0

    .line 164
    .local v72, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v98, 0x0

    .line 165
    .local v98, "dock":Lcom/android/server/DockObserver;
    const/16 v157, 0x0

    .line 166
    .local v157, "usb":Lcom/android/server/usb/UsbService;
    const/16 v143, 0x0

    .line 167
    .local v143, "serial":Lcom/android/server/SerialService;
    const/16 v153, 0x0

    .line 168
    .local v153, "twilight":Lcom/android/server/TwilightService;
    const/16 v155, 0x0

    .line 169
    .local v155, "uiMode":Lcom/android/server/UiModeManagerService;
    const/16 v141, 0x0

    .line 170
    .local v141, "recognition":Lcom/android/server/RecognitionManagerService;
    const/16 v126, 0x0

    .line 171
    .local v126, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v75, 0x0

    .line 172
    .local v75, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v109, 0x0

    .line 173
    .local v109, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v149, 0x0

    .line 174
    .local v149, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v122, 0x0

    .line 175
    .local v122, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    const/16 v80, 0x0

    .line 178
    .local v80, "consumerIr":Lcom/android/server/ConsumerIrService;
    new-instance v169, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v169

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 179
    .local v169, "wmHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual/range {v169 .. v169}, Ljava/lang/Thread;->start()V

    .line 180
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v169 .. v169}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 181
    .local v21, "wmHandler":Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    const/16 v24, 0x0

    .line 199
    .local v24, "onlyCore":Z
    const/16 v106, 0x0

    .line 204
    .local v106, "firstBoot":Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v111, Lcom/android/server/pm/Installer;

    invoke-direct/range {v111 .. v111}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v110    # "installer":Lcom/android/server/pm/Installer;
    .local v111, "installer":Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v111 .. v111}, Lcom/android/server/pm/Installer;->ping()Z

    .line 208
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v131, Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {v131 .. v131}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5f

    .line 210
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .local v131, "power":Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    move-object/from16 v0, v131

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 212
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static/range {v104 .. v104}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_60

    move-result-object v5

    move-object/from16 v4, v131

    .end local v131    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v110, v111

    .line 219
    .end local v111    # "installer":Lcom/android/server/pm/Installer;
    .restart local v110    # "installer":Lcom/android/server/pm/Installer;
    :goto_3
    const-string v7, "config.disable_storage"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v94

    .line 220
    .local v94, "disableStorage":Z
    const-string v7, "config.disable_media"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v91

    .line 221
    .local v91, "disableMedia":Z
    const-string v7, "config.disable_bluetooth"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v89

    .line 222
    .local v89, "disableBluetooth":Z
    const-string v7, "config.disable_telephony"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v96

    .line 223
    .local v96, "disableTelephony":Z
    const-string v7, "config.disable_location"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v90

    .line 224
    .local v90, "disableLocation":Z
    const-string v7, "config.disable_systemui"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v95

    .line 225
    .local v95, "disableSystemUI":Z
    const-string v7, "config.disable_noncore"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v93

    .line 226
    .local v93, "disableNonCoreServices":Z
    const-string v7, "config.disable_network"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v92

    .line 227
    .local v92, "disableNetwork":Z
    const-string v7, "config.disable_atlas"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v88

    .line 230
    .local v88, "disableAtlas":Z
    :try_start_3
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v11, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    invoke-direct {v11, v5, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_54

    .line 232
    .end local v97    # "display":Lcom/android/server/display/DisplayManagerService;
    .local v11, "display":Lcom/android/server/display/DisplayManagerService;
    :try_start_4
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v11, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 234
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v150, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v150

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_55

    .line 236
    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v150, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_5
    const-string v7, "telephony.registry"

    move-object/from16 v0, v150

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 238
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 239
    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v123, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v123

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 241
    .end local v122    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .local v123, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :try_start_6
    const-string v7, "telephony.msim.registry"

    move-object/from16 v0, v123

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_56

    move-object/from16 v122, v123

    .line 244
    .end local v123    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v122    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :cond_1
    :try_start_7
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 247
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 249
    invoke-virtual {v11}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_2

    .line 250
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    :cond_2
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 257
    .local v85, "cryptState":Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v85

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 258
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/16 v24, 0x1

    .line 265
    :cond_3
    :goto_4
    const/16 v132, 0x0

    .line 266
    .local v132, "preloadedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v24, :cond_4

    .line 267
    const-string v7, "SystemServer"

    const-string v9, "Installing customized removable applications"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v68, Lcom/android/server/CustomizedApplicationInstaller;

    move-object/from16 v0, v68

    invoke-direct {v0, v5}, Lcom/android/server/CustomizedApplicationInstaller;-><init>(Landroid/content/Context;)V

    .line 270
    .local v68, "applicationInstaller":Lcom/android/server/CustomizedApplicationInstaller;
    invoke-virtual/range {v68 .. v68}, Lcom/android/server/CustomizedApplicationInstaller;->install()V

    .line 271
    invoke-virtual/range {v68 .. v68}, Lcom/android/server/CustomizedApplicationInstaller;->getInstalledApplications()Ljava/util/List;

    move-result-object v132

    .line 274
    .end local v68    # "applicationInstaller":Lcom/android/server/CustomizedApplicationInstaller;
    :cond_4
    if-eqz v104, :cond_2a

    const/4 v7, 0x1

    :goto_5
    move-object/from16 v0, v110

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v130

    .line 278
    :try_start_8
    invoke-interface/range {v130 .. v130}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    move-result v106

    .line 282
    :goto_6
    if-eqz v132, :cond_5

    .line 283
    :try_start_9
    move-object/from16 v0, v130

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v7, v0

    move-object/from16 v0, v132

    invoke-virtual {v7, v0}, Lcom/android/server/pm/PackageManagerService;->enablePreloadedApplications(Ljava/util/List;)V

    .line 286
    :cond_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 288
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 291
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 295
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    .line 300
    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v64, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    .line 302
    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v64, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_b
    const-string v7, "account"

    move-object/from16 v0, v64

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_57

    move-object/from16 v63, v64

    .line 307
    .end local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_7
    :try_start_c
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v7, 0x1

    move/from16 v0, v104

    if-ne v0, v7, :cond_2b

    const/4 v7, 0x1

    :goto_8
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v82

    .line 311
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 314
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    .line 317
    .end local v112    # "lights":Lcom/android/server/LightsService;
    .local v6, "lights":Lcom/android/server/LightsService;
    :try_start_d
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_58

    .line 319
    .end local v71    # "battery":Lcom/android/server/BatteryService;
    .local v8, "battery":Lcom/android/server/BatteryService;
    :try_start_e
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 321
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v160, Lcom/android/server/VibratorService;

    move-object/from16 v0, v160

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_59

    .line 323
    .end local v159    # "vibrator":Lcom/android/server/VibratorService;
    .local v160, "vibrator":Lcom/android/server/VibratorService;
    :try_start_f
    const-string v7, "vibrator"

    move-object/from16 v0, v160

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 325
    const-string v7, "SystemServer"

    const-string v9, "Consumer IR Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance v81, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v81

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_5a

    .line 327
    .end local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v81, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_10
    const-string v7, "consumer_ir"

    move-object/from16 v0, v81

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 331
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v10

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/display/DisplayManagerService;)V

    .line 335
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v16, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_5b

    .line 337
    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .local v16, "alarm":Lcom/android/server/AlarmManagerService;
    :try_start_11
    const-string v7, "alarm"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 339
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v17

    move-object v13, v5

    move-object v14, v8

    move-object v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 342
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    const-string v9, "WindowManager thread"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v9}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 344
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v20, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_5c

    .line 347
    .end local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v20, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_12
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v7, 0x1

    move/from16 v0, v104

    if-eq v0, v7, :cond_2c

    const/16 v22, 0x1

    :goto_9
    if-nez v106, :cond_2d

    const/16 v23, 0x1

    :goto_a
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v168

    .line 351
    const-string v7, "window"

    move-object/from16 v0, v168

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 352
    const-string v7, "input"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 354
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v168

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 356
    invoke-virtual/range {v168 .. v168}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 357
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->start()V

    .line 359
    move-object/from16 v0, v168

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 360
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 365
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 366
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_3

    :goto_b
    move-object/from16 v80, v81

    .end local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v149, v150

    .end local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v159, v160

    .line 384
    .end local v85    # "cryptState":Ljava/lang/String;
    .end local v132    # "preloadedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v160    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v159    # "vibrator":Lcom/android/server/VibratorService;
    :goto_c
    const/16 v86, 0x0

    .line 385
    .local v86, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    const/16 v147, 0x0

    .line 386
    .local v147, "statusBar":Lcom/android/server/StatusBarManagerService;
    const/16 v107, 0x0

    .line 387
    .local v107, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v66, 0x0

    .line 388
    .local v66, "appWidget":Lcom/android/server/AppWidgetService;
    const/16 v128, 0x0

    .line 389
    .local v128, "notification":Lcom/android/server/NotificationManagerService;
    const/16 v162, 0x0

    .line 390
    .local v162, "wallpaper":Lcom/android/server/WallpaperManagerService;
    const/16 v113, 0x0

    .line 391
    .local v113, "location":Lcom/android/server/LocationManagerService;
    const/16 v83, 0x0

    .line 392
    .local v83, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v151, 0x0

    .line 393
    .local v151, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v115, 0x0

    .line 394
    .local v115, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v100, 0x0

    .line 395
    .local v100, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    const/16 v69, 0x0

    .line 396
    .local v69, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v133, 0x0

    .line 397
    .local v133, "printManager":Lcom/android/server/print/PrintManagerService;
    const/16 v117, 0x0

    .line 400
    .local v117, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/4 v7, 0x1

    move/from16 v0, v104

    if-eq v0, v7, :cond_6

    .line 404
    :try_start_13
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v108, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v108

    move-object/from16 v1, v168

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_4

    .line 406
    .end local v107    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v108, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_14
    const-string v7, "input_method"

    move-object/from16 v0, v108

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_53

    move-object/from16 v107, v108

    .line 412
    .end local v108    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v107    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_15
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_5

    .line 422
    :cond_6
    :goto_e
    :try_start_16
    invoke-virtual/range {v168 .. v168}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_6

    .line 428
    :goto_f
    :try_start_17
    invoke-interface/range {v130 .. v130}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_7

    .line 434
    :goto_10
    :try_start_18
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040426

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_52

    .line 441
    :goto_11
    const/4 v7, 0x1

    move/from16 v0, v104

    if-eq v0, v7, :cond_36

    .line 442
    if-nez v94, :cond_7

    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 449
    :try_start_19
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v121, Lcom/android/server/MountService;

    move-object/from16 v0, v121

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_8

    .line 451
    .end local v120    # "mountService":Lcom/android/server/MountService;
    .local v121, "mountService":Lcom/android/server/MountService;
    :try_start_1a
    const-string v7, "mount"

    move-object/from16 v0, v121

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_51

    move-object/from16 v120, v121

    .line 457
    .end local v121    # "mountService":Lcom/android/server/MountService;
    .restart local v120    # "mountService":Lcom/android/server/MountService;
    :cond_7
    :goto_12
    if-nez v93, :cond_8

    .line 459
    :try_start_1b
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance v116, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v116

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_9

    .line 461
    .end local v115    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v116, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_1c
    const-string v7, "lock_settings"

    move-object/from16 v0, v116

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_50

    move-object/from16 v115, v116

    .line 467
    .end local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v115    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_13
    :try_start_1d
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v87, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v87

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_a

    .line 469
    .end local v86    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .local v87, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :try_start_1e
    const-string v7, "device_policy"

    move-object/from16 v0, v87

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_4f

    move-object/from16 v86, v87

    .line 475
    .end local v87    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v86    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :cond_8
    :goto_14
    if-nez v95, :cond_9

    .line 477
    :try_start_1f
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v148, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v148

    move-object/from16 v1, v168

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_b

    .line 479
    .end local v147    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .local v148, "statusBar":Lcom/android/server/StatusBarManagerService;
    :try_start_20
    const-string v7, "statusbar"

    move-object/from16 v0, v148

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_4e

    move-object/from16 v147, v148

    .line 485
    .end local v148    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v147    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :cond_9
    :goto_15
    if-nez v93, :cond_a

    .line 487
    :try_start_21
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_c

    .line 495
    :cond_a
    :goto_16
    if-nez v92, :cond_b

    .line 497
    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 499
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_d

    .line 505
    :cond_b
    :goto_17
    if-nez v93, :cond_c

    .line 507
    :try_start_23
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance v152, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v152

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_e

    .line 509
    .end local v151    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v152, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_24
    const-string v7, "textservices"

    move-object/from16 v0, v152

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_4d

    move-object/from16 v151, v152

    .line 515
    .end local v152    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v151    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_c
    :goto_18
    if-nez v92, :cond_35

    .line 517
    :try_start_25
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v125, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v125

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_f

    .line 519
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v125, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_26
    const-string v7, "netstats"

    move-object/from16 v0, v125

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_4c

    move-object/from16 v29, v125

    .line 525
    .end local v125    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_19
    :try_start_27
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_10

    .line 529
    .end local v124    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_28
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_4b

    .line 535
    :goto_1a
    :try_start_29
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    new-instance v167, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v167

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_11

    .line 537
    .end local v166    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .local v167, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_2a
    const-string v7, "wifip2p"

    move-object/from16 v0, v167

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_4a

    move-object/from16 v166, v167

    .line 543
    .end local v167    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v166    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1b
    :try_start_2b
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    new-instance v165, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v165

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_12

    .line 545
    .end local v164    # "wifi":Lcom/android/server/wifi/WifiService;
    .local v165, "wifi":Lcom/android/server/wifi/WifiService;
    :try_start_2c
    const-string v7, "wifi"

    move-object/from16 v0, v165

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_49

    move-object/from16 v164, v165

    .line 551
    .end local v165    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v164    # "wifi":Lcom/android/server/wifi/WifiService;
    :goto_1c
    const/16 v103, 0x1

    .line 552
    .local v103, "enableCne":I
    :try_start_2d
    invoke-static {}, Lcom/android/server/ServerThread;->deviceHasSufficientMemory()Z

    move-result v7

    if-nez v7, :cond_d

    .line 553
    const-string v7, "persist.cne.override.memlimit"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v103

    .line 555
    :cond_d
    const/4 v7, 0x1

    move/from16 v0, v103

    if-ne v0, v7, :cond_32

    const-string v7, "persist.cne.feature"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v74

    .line 558
    .local v74, "cneFeature":I
    :goto_1d
    if-lez v74, :cond_33

    const/16 v7, 0xa

    move/from16 v0, v74

    if-ge v0, v7, :cond_33

    .line 559
    const-string v7, "SystemServer"

    const-string v9, "QcConnectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    new-instance v137, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/services-ext.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v137

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 563
    .local v137, "qcsClassLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.android.server.QcConnectivityService"

    move-object/from16 v0, v137

    invoke-virtual {v0, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v136

    .line 565
    .local v136, "qcsClass":Ljava/lang/Class;
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-class v10, Landroid/os/INetworkManagementService;

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-class v10, Landroid/net/INetworkStatsService;

    aput-object v10, v7, v9

    const/4 v9, 0x3

    const-class v10, Landroid/net/INetworkPolicyManager;

    aput-object v10, v7, v9

    move-object/from16 v0, v136

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v138

    .line 568
    .local v138, "qcsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v9, 0x1

    aput-object v30, v7, v9

    const/4 v9, 0x2

    aput-object v29, v7, v9

    const/4 v9, 0x3

    aput-object v25, v7, v9

    move-object/from16 v0, v138

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v135

    .line 570
    move-object/from16 v0, v135

    check-cast v0, Lcom/android/server/ConnectivityService;

    move-object/from16 v78, v0

    .line 576
    .end local v135    # "qcCon":Ljava/lang/Object;
    .end local v136    # "qcsClass":Ljava/lang/Class;
    .end local v137    # "qcsClassLoader":Ldalvik/system/PathClassLoader;
    .end local v138    # "qcsConstructor":Ljava/lang/reflect/Constructor;
    :goto_1e
    if-eqz v78, :cond_e

    .line 577
    const-string v7, "connectivity"

    move-object/from16 v0, v78

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 578
    move-object/from16 v0, v29

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 579
    move-object/from16 v0, v25

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 580
    invoke-virtual/range {v164 .. v164}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V

    .line 581
    invoke-virtual/range {v166 .. v166}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_13

    .line 588
    .end local v74    # "cneFeature":I
    :cond_e
    :goto_1f
    :try_start_2e
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v145

    .line 590
    const-string v7, "servicediscovery"

    move-object/from16 v0, v145

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_14

    .line 597
    .end local v103    # "enableCne":I
    :goto_20
    if-nez v93, :cond_f

    .line 599
    :try_start_2f
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_15

    .line 613
    :cond_f
    :goto_21
    :try_start_30
    const-string v7, "SystemServer"

    const-string v9, "FM receiver Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v9, "fm_receiver"

    const-string v7, "com.stericsson.hardware.fm.FmReceiverService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/content/Context;

    aput-object v13, v10, v12

    invoke-virtual {v7, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v10, v12

    invoke-virtual {v7, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_16

    .line 626
    :goto_22
    if-eqz v120, :cond_10

    if-nez v24, :cond_10

    .line 627
    invoke-virtual/range {v120 .. v120}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 631
    :cond_10
    if-eqz v63, :cond_11

    .line 632
    :try_start_31
    invoke-virtual/range {v63 .. v63}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_17

    .line 638
    :cond_11
    :goto_23
    if-eqz v82, :cond_12

    .line 639
    :try_start_32
    invoke-virtual/range {v82 .. v82}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_18

    .line 645
    :cond_12
    :goto_24
    :try_start_33
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    new-instance v129, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v129

    move-object/from16 v1, v147

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_19

    .line 647
    .end local v128    # "notification":Lcom/android/server/NotificationManagerService;
    .local v129, "notification":Lcom/android/server/NotificationManagerService;
    :try_start_34
    const-string v7, "notification"

    move-object/from16 v0, v129

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 648
    move-object/from16 v0, v25

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_48

    move-object/from16 v128, v129

    .line 654
    .end local v129    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v128    # "notification":Lcom/android/server/NotificationManagerService;
    :goto_25
    :try_start_35
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1a

    .line 661
    :goto_26
    if-nez v90, :cond_13

    .line 663
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v114, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v114

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1b

    .line 665
    .end local v113    # "location":Lcom/android/server/LocationManagerService;
    .local v114, "location":Lcom/android/server/LocationManagerService;
    :try_start_37
    const-string v7, "location"

    move-object/from16 v0, v114

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_47

    move-object/from16 v113, v114

    .line 671
    .end local v114    # "location":Lcom/android/server/LocationManagerService;
    .restart local v113    # "location":Lcom/android/server/LocationManagerService;
    :goto_27
    :try_start_38
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    new-instance v84, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v84

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1c

    .line 673
    .end local v83    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v84, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_39
    const-string v7, "country_detector"

    move-object/from16 v0, v84

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_46

    move-object/from16 v83, v84

    .line 679
    .end local v84    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v83    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_13
    :goto_28
    if-nez v93, :cond_14

    .line 681
    :try_start_3a
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1d

    .line 690
    :cond_14
    :goto_29
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1e

    .line 697
    :goto_2a
    if-nez v93, :cond_15

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110032

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 700
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    if-nez v33, :cond_15

    .line 702
    new-instance v163, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v163

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_1f

    .line 703
    .end local v162    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .local v163, "wallpaper":Lcom/android/server/WallpaperManagerService;
    :try_start_3d
    const-string v7, "wallpaper"

    move-object/from16 v0, v163

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_45

    move-object/from16 v162, v163

    .line 710
    .end local v163    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v162    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_15
    :goto_2b
    if-nez v91, :cond_16

    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 712
    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_20

    .line 719
    :cond_16
    :goto_2c
    if-nez v93, :cond_17

    .line 721
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    new-instance v99, Lcom/android/server/DockObserver;

    move-object/from16 v0, v99

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_21

    .end local v98    # "dock":Lcom/android/server/DockObserver;
    .local v99, "dock":Lcom/android/server/DockObserver;
    move-object/from16 v98, v99

    .line 729
    .end local v99    # "dock":Lcom/android/server/DockObserver;
    .restart local v98    # "dock":Lcom/android/server/DockObserver;
    :cond_17
    :goto_2d
    if-nez v91, :cond_18

    .line 731
    :try_start_40
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v20

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_22

    .line 740
    :cond_18
    :goto_2e
    if-nez v93, :cond_19

    .line 742
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    new-instance v158, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v158

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_23

    .line 745
    .end local v157    # "usb":Lcom/android/server/usb/UsbService;
    .local v158, "usb":Lcom/android/server/usb/UsbService;
    :try_start_42
    const-string v7, "usb"

    move-object/from16 v0, v158

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_44

    move-object/from16 v157, v158

    .line 751
    .end local v158    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v157    # "usb":Lcom/android/server/usb/UsbService;
    :goto_2f
    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    new-instance v144, Lcom/android/server/SerialService;

    move-object/from16 v0, v144

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_24

    .line 754
    .end local v143    # "serial":Lcom/android/server/SerialService;
    .local v144, "serial":Lcom/android/server/SerialService;
    :try_start_44
    const-string v7, "serial"

    move-object/from16 v0, v144

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_43

    move-object/from16 v143, v144

    .line 761
    .end local v144    # "serial":Lcom/android/server/SerialService;
    .restart local v143    # "serial":Lcom/android/server/SerialService;
    :cond_19
    :goto_30
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    new-instance v154, Lcom/android/server/TwilightService;

    move-object/from16 v0, v154

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_25

    .end local v153    # "twilight":Lcom/android/server/TwilightService;
    .local v154, "twilight":Lcom/android/server/TwilightService;
    move-object/from16 v153, v154

    .line 768
    .end local v154    # "twilight":Lcom/android/server/TwilightService;
    .restart local v153    # "twilight":Lcom/android/server/TwilightService;
    :goto_31
    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    new-instance v156, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v156

    move-object/from16 v1, v153

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_26

    .end local v155    # "uiMode":Lcom/android/server/UiModeManagerService;
    .local v156, "uiMode":Lcom/android/server/UiModeManagerService;
    move-object/from16 v155, v156

    .line 775
    .end local v156    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v155    # "uiMode":Lcom/android/server/UiModeManagerService;
    :goto_32
    if-nez v93, :cond_1a

    .line 777
    :try_start_47
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_27

    .line 785
    :goto_33
    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    new-instance v67, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v67

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_28

    .line 787
    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .local v67, "appWidget":Lcom/android/server/AppWidgetService;
    :try_start_49
    const-string v7, "appwidget"

    move-object/from16 v0, v67

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_42

    move-object/from16 v66, v67

    .line 793
    .end local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    :goto_34
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    new-instance v142, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v142

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_29

    .end local v141    # "recognition":Lcom/android/server/RecognitionManagerService;
    .local v142, "recognition":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v141, v142

    .line 801
    .end local v142    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v141    # "recognition":Lcom/android/server/RecognitionManagerService;
    :cond_1a
    :goto_35
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2a

    .line 812
    :goto_36
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2b

    .line 819
    :goto_37
    if-nez v92, :cond_1b

    .line 821
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance v127, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v127

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2c

    .end local v126    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v127, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v126, v127

    .line 828
    .end local v127    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v126    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1b
    :goto_38
    if-nez v91, :cond_1c

    .line 830
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    new-instance v76, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v76

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2d

    .line 832
    .end local v75    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v76, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_4f
    const-string v7, "commontime_management"

    move-object/from16 v0, v76

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_41

    move-object/from16 v75, v76

    .line 838
    .end local v76    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v75    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_1c
    :goto_39
    if-nez v92, :cond_1d

    .line 840
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2e

    .line 847
    :cond_1d
    :goto_3a
    if-nez v93, :cond_1e

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111004b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 850
    :try_start_51
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    new-instance v101, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v101

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_2f

    .line 853
    .end local v100    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .local v101, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :try_start_52
    const-string v7, "dreams"

    move-object/from16 v0, v101

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_40

    move-object/from16 v100, v101

    .line 859
    .end local v101    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v100    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :cond_1e
    :goto_3b
    if-nez v93, :cond_1f

    if-nez v88, :cond_1f

    .line 861
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "Assets Atlas Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    new-instance v70, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v70

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_30

    .line 863
    .end local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v70, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_54
    const-string v7, "assetatlas"

    move-object/from16 v0, v70

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_3f

    move-object/from16 v69, v70

    .line 870
    .end local v70    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1f
    :goto_3c
    :try_start_55
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_31

    .line 877
    :goto_3d
    :try_start_56
    const-string v7, "SystemServer"

    const-string v9, "Print Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    new-instance v134, Lcom/android/server/print/PrintManagerService;

    move-object/from16 v0, v134

    invoke-direct {v0, v5}, Lcom/android/server/print/PrintManagerService;-><init>(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_32

    .line 879
    .end local v133    # "printManager":Lcom/android/server/print/PrintManagerService;
    .local v134, "printManager":Lcom/android/server/print/PrintManagerService;
    :try_start_57
    const-string v7, "print"

    move-object/from16 v0, v134

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_3e

    move-object/from16 v133, v134

    .line 884
    .end local v134    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v133    # "printManager":Lcom/android/server/print/PrintManagerService;
    :goto_3e
    if-nez v93, :cond_20

    .line 886
    :try_start_58
    const-string v7, "SystemServer"

    const-string v9, "Media Router Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    new-instance v118, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v118

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_33

    .line 888
    .end local v117    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v118, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_59
    const-string v7, "media_router"

    move-object/from16 v0, v118

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_3d

    move-object/from16 v117, v118

    .line 897
    .end local v118    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v117    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :cond_20
    :goto_3f
    invoke-virtual/range {v168 .. v168}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 898
    .local v47, "safeMode":Z
    if-eqz v47, :cond_34

    .line 899
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 901
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 903
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 912
    :goto_40
    :try_start_5a
    invoke-virtual/range {v159 .. v159}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_34

    .line 917
    :goto_41
    if-eqz v115, :cond_21

    .line 919
    :try_start_5b
    invoke-virtual/range {v115 .. v115}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_35

    .line 925
    :cond_21
    :goto_42
    if-eqz v86, :cond_22

    .line 927
    :try_start_5c
    invoke-virtual/range {v86 .. v86}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_36

    .line 933
    :cond_22
    :goto_43
    if-eqz v128, :cond_23

    .line 935
    :try_start_5d
    invoke-virtual/range {v128 .. v128}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_37

    .line 942
    :cond_23
    :goto_44
    :try_start_5e
    invoke-virtual/range {v168 .. v168}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_38

    .line 947
    :goto_45
    if-eqz v47, :cond_24

    .line 948
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 954
    :cond_24
    invoke-virtual/range {v168 .. v168}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v77

    .line 955
    .local v77, "config":Landroid/content/res/Configuration;
    new-instance v119, Landroid/util/DisplayMetrics;

    invoke-direct/range {v119 .. v119}, Landroid/util/DisplayMetrics;-><init>()V

    .line 956
    .local v119, "metrics":Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v161

    check-cast v161, Landroid/view/WindowManager;

    .line 957
    .local v161, "w":Landroid/view/WindowManager;
    invoke-interface/range {v161 .. v161}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v119

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 958
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v77

    move-object/from16 v1, v119

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 961
    :try_start_5f
    move-object/from16 v0, v153

    move-object/from16 v1, v100

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_39

    .line 967
    :goto_46
    :try_start_60
    invoke-interface/range {v130 .. v130}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_3a

    .line 973
    :goto_47
    :try_start_61
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_3b

    .line 979
    :goto_48
    move-object/from16 v34, v5

    .line 980
    .local v34, "contextF":Landroid/content/Context;
    move-object/from16 v35, v120

    .line 981
    .local v35, "mountServiceF":Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 982
    .local v36, "batteryF":Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 983
    .local v37, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 984
    .local v38, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 985
    .local v39, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v78

    .line 986
    .local v40, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v98

    .line 987
    .local v41, "dockF":Lcom/android/server/DockObserver;
    move-object/from16 v42, v157

    .line 988
    .local v42, "usbF":Lcom/android/server/usb/UsbService;
    move-object/from16 v43, v153

    .line 989
    .local v43, "twilightF":Lcom/android/server/TwilightService;
    move-object/from16 v44, v155

    .line 990
    .local v44, "uiModeF":Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v66

    .line 991
    .local v46, "appWidgetF":Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v162

    .line 992
    .local v48, "wallpaperF":Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v107

    .line 993
    .local v49, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v141

    .line 994
    .local v45, "recognitionF":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v113

    .line 995
    .local v51, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v83

    .line 996
    .local v52, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v53, v126

    .line 997
    .local v53, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v54, v75

    .line 998
    .local v54, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v55, v151

    .line 999
    .local v55, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v147

    .line 1000
    .local v50, "statusBarF":Lcom/android/server/StatusBarManagerService;
    move-object/from16 v56, v100

    .line 1001
    .local v56, "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v57, v69

    .line 1002
    .local v57, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v58, v20

    .line 1003
    .local v58, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v59, v149

    .line 1004
    .local v59, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v60, v122

    .line 1005
    .local v60, "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v61, v133

    .line 1006
    .local v61, "printManagerF":Lcom/android/server/print/PrintManagerService;
    move-object/from16 v62, v117

    .line 1013
    .local v62, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$2;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v62}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/MSimTelephonyRegistry;Lcom/android/server/print/PrintManagerService;Lcom/android/server/media/MediaRouterService;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1170
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_25

    .line 1171
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_25
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1175
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    return-void

    .line 124
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v21    # "wmHandler":Landroid/os/Handler;
    .end local v24    # "onlyCore":Z
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v33    # "headless":Z
    .end local v34    # "contextF":Landroid/content/Context;
    .end local v35    # "mountServiceF":Lcom/android/server/MountService;
    .end local v36    # "batteryF":Lcom/android/server/BatteryService;
    .end local v37    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v38    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v39    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v41    # "dockF":Lcom/android/server/DockObserver;
    .end local v42    # "usbF":Lcom/android/server/usb/UsbService;
    .end local v43    # "twilightF":Lcom/android/server/TwilightService;
    .end local v44    # "uiModeF":Lcom/android/server/UiModeManagerService;
    .end local v45    # "recognitionF":Lcom/android/server/RecognitionManagerService;
    .end local v46    # "appWidgetF":Lcom/android/server/AppWidgetService;
    .end local v47    # "safeMode":Z
    .end local v48    # "wallpaperF":Lcom/android/server/WallpaperManagerService;
    .end local v49    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v50    # "statusBarF":Lcom/android/server/StatusBarManagerService;
    .end local v51    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v52    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v53    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v54    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v55    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v56    # "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    .end local v57    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v58    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v59    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v60    # "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    .end local v61    # "printManagerF":Lcom/android/server/print/PrintManagerService;
    .end local v62    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v72    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v75    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .end local v77    # "config":Landroid/content/res/Configuration;
    .end local v78    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v82    # "contentService":Lcom/android/server/content/ContentService;
    .end local v83    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v86    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v88    # "disableAtlas":Z
    .end local v89    # "disableBluetooth":Z
    .end local v90    # "disableLocation":Z
    .end local v91    # "disableMedia":Z
    .end local v92    # "disableNetwork":Z
    .end local v93    # "disableNonCoreServices":Z
    .end local v94    # "disableStorage":Z
    .end local v95    # "disableSystemUI":Z
    .end local v96    # "disableTelephony":Z
    .end local v98    # "dock":Lcom/android/server/DockObserver;
    .end local v100    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v104    # "factoryTest":I
    .end local v105    # "factoryTestStr":Ljava/lang/String;
    .end local v106    # "firstBoot":Z
    .end local v107    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v110    # "installer":Lcom/android/server/pm/Installer;
    .end local v113    # "location":Lcom/android/server/LocationManagerService;
    .end local v115    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v117    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v119    # "metrics":Landroid/util/DisplayMetrics;
    .end local v120    # "mountService":Lcom/android/server/MountService;
    .end local v122    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .end local v126    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v128    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v130    # "pm":Landroid/content/pm/IPackageManager;
    .end local v133    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v141    # "recognition":Lcom/android/server/RecognitionManagerService;
    .end local v143    # "serial":Lcom/android/server/SerialService;
    .end local v145    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v147    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v151    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v153    # "twilight":Lcom/android/server/TwilightService;
    .end local v155    # "uiMode":Lcom/android/server/UiModeManagerService;
    .end local v157    # "usb":Lcom/android/server/usb/UsbService;
    .end local v159    # "vibrator":Lcom/android/server/VibratorService;
    .end local v161    # "w":Landroid/view/WindowManager;
    .end local v162    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .end local v164    # "wifi":Lcom/android/server/wifi/WifiService;
    .end local v166    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .end local v168    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v169    # "wmHandlerThread":Landroid/os/HandlerThread;
    :cond_26
    const/16 v140, 0x0

    goto/16 :goto_0

    .line 130
    .restart local v140    # "reboot":Z
    :cond_27
    const/16 v139, 0x0

    .restart local v139    # "reason":Ljava/lang/String;
    goto/16 :goto_1

    .line 138
    .end local v139    # "reason":Ljava/lang/String;
    .end local v140    # "reboot":Z
    .restart local v105    # "factoryTestStr":Ljava/lang/String;
    :cond_28
    invoke-static/range {v105 .. v105}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v104

    goto/16 :goto_2

    .line 214
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v21    # "wmHandler":Landroid/os/Handler;
    .restart local v24    # "onlyCore":Z
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v33    # "headless":Z
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v72    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v75    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v78    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v82    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v97    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v98    # "dock":Lcom/android/server/DockObserver;
    .restart local v104    # "factoryTest":I
    .restart local v106    # "firstBoot":Z
    .restart local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v110    # "installer":Lcom/android/server/pm/Installer;
    .restart local v112    # "lights":Lcom/android/server/LightsService;
    .restart local v120    # "mountService":Lcom/android/server/MountService;
    .restart local v122    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v124    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v126    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v130    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v135    # "qcCon":Ljava/lang/Object;
    .restart local v141    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v143    # "serial":Lcom/android/server/SerialService;
    .restart local v145    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v153    # "twilight":Lcom/android/server/TwilightService;
    .restart local v155    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v157    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v159    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v164    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v166    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v168    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v169    # "wmHandlerThread":Landroid/os/HandlerThread;
    :catch_0
    move-exception v102

    .line 215
    .local v102, "e":Ljava/lang/RuntimeException;
    :goto_49
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v7, "System"

    const-string v9, "************ Failure starting bootstrap service"

    move-object/from16 v0, v102

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 260
    .end local v97    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v102    # "e":Ljava/lang/RuntimeException;
    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v85    # "cryptState":Ljava/lang/String;
    .restart local v88    # "disableAtlas":Z
    .restart local v89    # "disableBluetooth":Z
    .restart local v90    # "disableLocation":Z
    .restart local v91    # "disableMedia":Z
    .restart local v92    # "disableNetwork":Z
    .restart local v93    # "disableNonCoreServices":Z
    .restart local v94    # "disableStorage":Z
    .restart local v95    # "disableSystemUI":Z
    .restart local v96    # "disableTelephony":Z
    .restart local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_29
    :try_start_62
    const-string v7, "1"

    move-object/from16 v0, v85

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 261
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/16 v24, 0x1

    goto/16 :goto_4

    .line 274
    .restart local v132    # "preloadedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2a
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 303
    :catch_1
    move-exception v102

    .line 304
    .local v102, "e":Ljava/lang/Throwable;
    :goto_4a
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v102

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_62} :catch_2

    goto/16 :goto_7

    .line 379
    .end local v85    # "cryptState":Ljava/lang/String;
    .end local v102    # "e":Ljava/lang/Throwable;
    .end local v132    # "preloadedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v102

    move-object/from16 v149, v150

    .end local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v109

    .end local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v71

    .end local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v112

    .line 380
    .end local v112    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .local v102, "e":Ljava/lang/RuntimeException;
    :goto_4b
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v102

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 308
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v102    # "e":Ljava/lang/RuntimeException;
    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v85    # "cryptState":Ljava/lang/String;
    .restart local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v112    # "lights":Lcom/android/server/LightsService;
    .restart local v132    # "preloadedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_2b
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 348
    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v71    # "battery":Lcom/android/server/BatteryService;
    .end local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v112    # "lights":Lcom/android/server/LightsService;
    .end local v159    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v160    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2c
    const/16 v22, 0x0

    goto/16 :goto_9

    :cond_2d
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 367
    :cond_2e
    const/4 v7, 0x1

    move/from16 v0, v104

    if-ne v0, v7, :cond_2f

    .line 368
    :try_start_63
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 379
    :catch_3
    move-exception v102

    move-object/from16 v80, v81

    .end local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v149, v150

    .end local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v159, v160

    .end local v160    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v159    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_4b

    .line 369
    .end local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2f
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_30

    .line 371
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 372
    :cond_30
    if-eqz v89, :cond_31

    .line 373
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service disabled by config"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 375
    :cond_31
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v73, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v73

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_63} :catch_3

    .line 377
    .end local v72    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v73, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_64
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v73

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_64
    .catch Ljava/lang/RuntimeException; {:try_start_64 .. :try_end_64} :catch_5d

    move-object/from16 v72, v73

    .end local v73    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v72    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_b

    .line 407
    .end local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v85    # "cryptState":Ljava/lang/String;
    .end local v132    # "preloadedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v160    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v83    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v86    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v100    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v107    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v113    # "location":Lcom/android/server/LocationManagerService;
    .restart local v115    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v117    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v128    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v133    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v147    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v151    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v159    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v162    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_4
    move-exception v102

    .line 408
    .local v102, "e":Ljava/lang/Throwable;
    :goto_4c
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 415
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v102

    .line 416
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 423
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v102

    .line 424
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 429
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v102

    .line 430
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 452
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v102

    .line 453
    .restart local v102    # "e":Ljava/lang/Throwable;
    :goto_4d
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 462
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v102

    .line 463
    .restart local v102    # "e":Ljava/lang/Throwable;
    :goto_4e
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 470
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v102

    .line 471
    .restart local v102    # "e":Ljava/lang/Throwable;
    :goto_4f
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 480
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v102

    .line 481
    .restart local v102    # "e":Ljava/lang/Throwable;
    :goto_50
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 490
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v102

    .line 491
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 500
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v102

    .line 501
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 510
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v102

    .line 511
    .restart local v102    # "e":Ljava/lang/Throwable;
    :goto_51
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 520
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v102

    .line 521
    .restart local v102    # "e":Ljava/lang/Throwable;
    :goto_52
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 530
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v102

    move-object/from16 v25, v124

    .line 531
    .end local v124    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v102    # "e":Ljava/lang/Throwable;
    :goto_53
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 538
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v102

    .line 539
    .restart local v102    # "e":Ljava/lang/Throwable;
    :goto_54
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 546
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v102

    .line 547
    .restart local v102    # "e":Ljava/lang/Throwable;
    :goto_55
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 555
    .end local v102    # "e":Ljava/lang/Throwable;
    .restart local v103    # "enableCne":I
    :cond_32
    const/16 v74, 0x0

    goto/16 :goto_1d

    .line 572
    .restart local v74    # "cneFeature":I
    :cond_33
    :try_start_65
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v79, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v79

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_13

    .end local v78    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v79, "connectivity":Lcom/android/server/ConnectivityService;
    move-object/from16 v78, v79

    .end local v79    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v78    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_1e

    .line 583
    .end local v74    # "cneFeature":I
    .end local v135    # "qcCon":Ljava/lang/Object;
    :catch_13
    move-exception v102

    .line 584
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 592
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v102

    .line 593
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 602
    .end local v102    # "e":Ljava/lang/Throwable;
    .end local v103    # "enableCne":I
    :catch_15
    move-exception v102

    .line 603
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 617
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v102

    .line 618
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting FM receiver Service"

    move-object/from16 v0, v102

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .line 633
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v102

    .line 634
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 640
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v102

    .line 641
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 649
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v102

    .line 650
    .restart local v102    # "e":Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 657
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v102

    .line 658
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 666
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v102

    .line 667
    .restart local v102    # "e":Ljava/lang/Throwable;
    :goto_57
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 674
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v102

    .line 675
    .restart local v102    # "e":Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 684
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v102

    .line 685
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 693
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v102

    .line 694
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 705
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v102

    .line 706
    .restart local v102    # "e":Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 714
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v102

    .line 715
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 724
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v102

    .line 725
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 735
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v102

    .line 736
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 746
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v102

    .line 747
    .restart local v102    # "e":Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 755
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v102

    .line 756
    .restart local v102    # "e":Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v102

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 763
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v102

    .line 764
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 771
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v102

    .line 772
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 780
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v102

    .line 781
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v102

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 788
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v102

    .line 789
    .restart local v102    # "e":Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 795
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v102

    .line 796
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 803
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v102

    .line 804
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 815
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v102

    .line 816
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 823
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v102

    .line 824
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 833
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v102

    .line 834
    .restart local v102    # "e":Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 842
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v102

    .line 843
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 854
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v102

    .line 855
    .restart local v102    # "e":Ljava/lang/Throwable;
    :goto_5e
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 864
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v102

    .line 865
    .restart local v102    # "e":Ljava/lang/Throwable;
    :goto_5f
    const-string v7, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 872
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v102

    .line 873
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 880
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v102

    .line 881
    .restart local v102    # "e":Ljava/lang/Throwable;
    :goto_60
    const-string v7, "starting Print Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 889
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_33
    move-exception v102

    .line 890
    .restart local v102    # "e":Ljava/lang/Throwable;
    :goto_61
    const-string v7, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 906
    .end local v102    # "e":Ljava/lang/Throwable;
    .restart local v47    # "safeMode":Z
    :cond_34
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_40

    .line 913
    :catch_34
    move-exception v102

    .line 914
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 920
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v102

    .line 921
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 928
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_36
    move-exception v102

    .line 929
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 936
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_37
    move-exception v102

    .line 937
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 943
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_38
    move-exception v102

    .line 944
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 962
    .end local v102    # "e":Ljava/lang/Throwable;
    .restart local v77    # "config":Landroid/content/res/Configuration;
    .restart local v119    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v161    # "w":Landroid/view/WindowManager;
    :catch_39
    move-exception v102

    .line 963
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 968
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v102

    .line 969
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 974
    .end local v102    # "e":Ljava/lang/Throwable;
    :catch_3b
    move-exception v102

    .line 975
    .restart local v102    # "e":Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 279
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47    # "safeMode":Z
    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v77    # "config":Landroid/content/res/Configuration;
    .end local v83    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v86    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v100    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v102    # "e":Ljava/lang/Throwable;
    .end local v107    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v113    # "location":Lcom/android/server/LocationManagerService;
    .end local v115    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v117    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v119    # "metrics":Landroid/util/DisplayMetrics;
    .end local v128    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v133    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v147    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v151    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v161    # "w":Landroid/view/WindowManager;
    .end local v162    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v85    # "cryptState":Ljava/lang/String;
    .restart local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v112    # "lights":Lcom/android/server/LightsService;
    .restart local v124    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v132    # "preloadedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v135    # "qcCon":Ljava/lang/Object;
    .restart local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_3c
    move-exception v7

    goto/16 :goto_6

    .line 889
    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v71    # "battery":Lcom/android/server/BatteryService;
    .end local v85    # "cryptState":Ljava/lang/String;
    .end local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v112    # "lights":Lcom/android/server/LightsService;
    .end local v124    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v132    # "preloadedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v135    # "qcCon":Ljava/lang/Object;
    .end local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v83    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v86    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v100    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v107    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v113    # "location":Lcom/android/server/LocationManagerService;
    .restart local v115    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v118    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v128    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v133    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v147    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v151    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v162    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_3d
    move-exception v102

    move-object/from16 v117, v118

    .end local v118    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v117    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto :goto_61

    .line 880
    .end local v133    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v134    # "printManager":Lcom/android/server/print/PrintManagerService;
    :catch_3e
    move-exception v102

    move-object/from16 v133, v134

    .end local v134    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v133    # "printManager":Lcom/android/server/print/PrintManagerService;
    goto/16 :goto_60

    .line 864
    .end local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v70    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_3f
    move-exception v102

    move-object/from16 v69, v70

    .end local v70    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_5f

    .line 854
    .end local v100    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v101    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :catch_40
    move-exception v102

    move-object/from16 v100, v101

    .end local v101    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v100    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_5e

    .line 833
    .end local v75    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v76    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_41
    move-exception v102

    move-object/from16 v75, v76

    .end local v76    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v75    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_5d

    .line 788
    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    :catch_42
    move-exception v102

    move-object/from16 v66, v67

    .end local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    goto/16 :goto_5c

    .line 755
    .end local v143    # "serial":Lcom/android/server/SerialService;
    .restart local v144    # "serial":Lcom/android/server/SerialService;
    :catch_43
    move-exception v102

    move-object/from16 v143, v144

    .end local v144    # "serial":Lcom/android/server/SerialService;
    .restart local v143    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_5b

    .line 746
    .end local v157    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v158    # "usb":Lcom/android/server/usb/UsbService;
    :catch_44
    move-exception v102

    move-object/from16 v157, v158

    .end local v158    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v157    # "usb":Lcom/android/server/usb/UsbService;
    goto/16 :goto_5a

    .line 705
    .end local v162    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v163    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_45
    move-exception v102

    move-object/from16 v162, v163

    .end local v163    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v162    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_59

    .line 674
    .end local v83    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v84    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_46
    move-exception v102

    move-object/from16 v83, v84

    .end local v84    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v83    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_58

    .line 666
    .end local v113    # "location":Lcom/android/server/LocationManagerService;
    .restart local v114    # "location":Lcom/android/server/LocationManagerService;
    :catch_47
    move-exception v102

    move-object/from16 v113, v114

    .end local v114    # "location":Lcom/android/server/LocationManagerService;
    .restart local v113    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_57

    .line 649
    .end local v128    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v129    # "notification":Lcom/android/server/NotificationManagerService;
    :catch_48
    move-exception v102

    move-object/from16 v128, v129

    .end local v129    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v128    # "notification":Lcom/android/server/NotificationManagerService;
    goto/16 :goto_56

    .line 546
    .end local v164    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v135    # "qcCon":Ljava/lang/Object;
    .restart local v165    # "wifi":Lcom/android/server/wifi/WifiService;
    :catch_49
    move-exception v102

    move-object/from16 v164, v165

    .end local v165    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v164    # "wifi":Lcom/android/server/wifi/WifiService;
    goto/16 :goto_55

    .line 538
    .end local v166    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v167    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :catch_4a
    move-exception v102

    move-object/from16 v166, v167

    .end local v167    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v166    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_54

    .line 530
    :catch_4b
    move-exception v102

    goto/16 :goto_53

    .line 520
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v124    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v125    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_4c
    move-exception v102

    move-object/from16 v29, v125

    .end local v125    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_52

    .line 510
    .end local v151    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v152    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_4d
    move-exception v102

    move-object/from16 v151, v152

    .end local v152    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v151    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_51

    .line 480
    .end local v147    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v148    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :catch_4e
    move-exception v102

    move-object/from16 v147, v148

    .end local v148    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v147    # "statusBar":Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_50

    .line 470
    .end local v86    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v87    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :catch_4f
    move-exception v102

    move-object/from16 v86, v87

    .end local v87    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v86    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_4f

    .line 462
    .end local v115    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_50
    move-exception v102

    move-object/from16 v115, v116

    .end local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v115    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_4e

    .line 452
    .end local v120    # "mountService":Lcom/android/server/MountService;
    .restart local v121    # "mountService":Lcom/android/server/MountService;
    :catch_51
    move-exception v102

    move-object/from16 v120, v121

    .end local v121    # "mountService":Lcom/android/server/MountService;
    .restart local v120    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_4d

    .line 438
    :catch_52
    move-exception v7

    goto/16 :goto_11

    .line 407
    .end local v107    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v108    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_53
    move-exception v102

    move-object/from16 v107, v108

    .end local v108    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v107    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_4c

    .line 379
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v83    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v86    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v100    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v107    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v113    # "location":Lcom/android/server/LocationManagerService;
    .end local v115    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v117    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v128    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v133    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v147    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v151    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v162    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v97    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v112    # "lights":Lcom/android/server/LightsService;
    :catch_54
    move-exception v102

    move-object/from16 v20, v109

    .end local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v71

    .end local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v11, v97

    .end local v97    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v112

    .end local v112    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_4b

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v112    # "lights":Lcom/android/server/LightsService;
    :catch_55
    move-exception v102

    move-object/from16 v20, v109

    .end local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v71

    .end local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v112

    .end local v112    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_4b

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v122    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v112    # "lights":Lcom/android/server/LightsService;
    .restart local v123    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_56
    move-exception v102

    move-object/from16 v122, v123

    .end local v123    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v122    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v149, v150

    .end local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v109

    .end local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v71

    .end local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v112

    .end local v112    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_4b

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v85    # "cryptState":Ljava/lang/String;
    .restart local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v112    # "lights":Lcom/android/server/LightsService;
    .restart local v132    # "preloadedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_57
    move-exception v102

    move-object/from16 v149, v150

    .end local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v109

    .end local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v71

    .end local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v112

    .end local v112    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v63, v64

    .end local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_4b

    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_58
    move-exception v102

    move-object/from16 v149, v150

    .end local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v109

    .end local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v71

    .end local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    goto/16 :goto_4b

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_59
    move-exception v102

    move-object/from16 v149, v150

    .end local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v109

    .end local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    goto/16 :goto_4b

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "vibrator":Lcom/android/server/VibratorService;
    :catch_5a
    move-exception v102

    move-object/from16 v149, v150

    .end local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v109

    .end local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v159, v160

    .end local v160    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v159    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_4b

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "vibrator":Lcom/android/server/VibratorService;
    :catch_5b
    move-exception v102

    move-object/from16 v80, v81

    .end local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v149, v150

    .end local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v109

    .end local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v159, v160

    .end local v160    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v159    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_4b

    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "vibrator":Lcom/android/server/VibratorService;
    :catch_5c
    move-exception v102

    move-object/from16 v80, v81

    .end local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v149, v150

    .end local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v109

    .end local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v159, v160

    .end local v160    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v159    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_4b

    .end local v72    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v73    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "vibrator":Lcom/android/server/VibratorService;
    :catch_5d
    move-exception v102

    move-object/from16 v80, v81

    .end local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v80    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v149, v150

    .end local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v72, v73

    .end local v73    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v72    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v159, v160

    .end local v160    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v159    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_4b

    .line 303
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v71    # "battery":Lcom/android/server/BatteryService;
    .restart local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v112    # "lights":Lcom/android/server/LightsService;
    .restart local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_5e
    move-exception v102

    move-object/from16 v63, v64

    .end local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_4a

    .line 214
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v85    # "cryptState":Ljava/lang/String;
    .end local v88    # "disableAtlas":Z
    .end local v89    # "disableBluetooth":Z
    .end local v90    # "disableLocation":Z
    .end local v91    # "disableMedia":Z
    .end local v92    # "disableNetwork":Z
    .end local v93    # "disableNonCoreServices":Z
    .end local v94    # "disableStorage":Z
    .end local v95    # "disableSystemUI":Z
    .end local v96    # "disableTelephony":Z
    .end local v110    # "installer":Lcom/android/server/pm/Installer;
    .end local v132    # "preloadedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v150    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v97    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v111    # "installer":Lcom/android/server/pm/Installer;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_5f
    move-exception v102

    move-object/from16 v110, v111

    .end local v111    # "installer":Lcom/android/server/pm/Installer;
    .restart local v110    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_49

    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v110    # "installer":Lcom/android/server/pm/Installer;
    .restart local v111    # "installer":Lcom/android/server/pm/Installer;
    .restart local v131    # "power":Lcom/android/server/power/PowerManagerService;
    :catch_60
    move-exception v102

    move-object/from16 v4, v131

    .end local v131    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v110, v111

    .end local v111    # "installer":Lcom/android/server/pm/Installer;
    .restart local v110    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_49

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v71    # "battery":Lcom/android/server/BatteryService;
    .end local v97    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v112    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v83    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v86    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v88    # "disableAtlas":Z
    .restart local v89    # "disableBluetooth":Z
    .restart local v90    # "disableLocation":Z
    .restart local v91    # "disableMedia":Z
    .restart local v92    # "disableNetwork":Z
    .restart local v93    # "disableNonCoreServices":Z
    .restart local v94    # "disableStorage":Z
    .restart local v95    # "disableSystemUI":Z
    .restart local v96    # "disableTelephony":Z
    .restart local v100    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v107    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v113    # "location":Lcom/android/server/LocationManagerService;
    .restart local v115    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v117    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v128    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v133    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v147    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v151    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v162    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_35
    move-object/from16 v25, v124

    .end local v124    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_20

    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v124    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_36
    move-object/from16 v25, v124

    .end local v124    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_3f
.end method

.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 103
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    return-void
.end method

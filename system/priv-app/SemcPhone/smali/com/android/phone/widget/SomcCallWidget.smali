.class public Lcom/android/phone/widget/SomcCallWidget;
.super Ljava/lang/Object;
.source "SomcCallWidget.java"

# interfaces
.implements Lcom/android/phone/widget/ISomcCallWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/widget/SomcCallWidget$1;,
        Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;
    }
.end annotation


# static fields
.field private static DBG:Z


# instance fields
.field private mActionHandler:Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;

.field private mIconDisabled:I

.field private mIconId:I

.field private mIconPressed:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPrio:I

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mStatus:I

.field private mText:Ljava/lang/String;

.field private mVisible:Z

.field private mVisibleDuringCall:Z

.field private mVisibleOnIncomingCall:Z

.field private mVisibleWhenCalling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/widget/SomcCallWidget;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/widget/SomcCallWidget;->mVisible:Z

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/widget/SomcCallWidget;->mStatus:I

    .line 59
    iput-object p2, p0, Lcom/android/phone/widget/SomcCallWidget;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 60
    new-instance v0, Lcom/android/phone/widget/SomcDefaultWidgetActionHandler;

    invoke-direct {v0}, Lcom/android/phone/widget/SomcDefaultWidgetActionHandler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/widget/SomcCallWidget;->mActionHandler:Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/phone/widget/SomcCallWidget;->setResolveInfo(Landroid/content/pm/ResolveInfo;)V

    .line 62
    return-void
.end method

.method private convertStatusValueFromString(Ljava/lang/String;)I
    .locals 1
    .param p1, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 179
    const-string v0, "DISABLED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    .line 181
    :cond_0
    const-string v0, "LOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    const/4 v0, 0x2

    goto :goto_0

    .line 184
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIntegerValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 170
    const/4 v0, -0x1

    .line 172
    .local v0, "res":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 175
    :goto_0
    return v0

    .line 173
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private loadIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "resId"    # I

    .prologue
    .line 115
    iget-object v3, p0, Lcom/android/phone/widget/SomcCallWidget;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 116
    iget-object v3, p0, Lcom/android/phone/widget/SomcCallWidget;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/phone/widget/SomcCallWidget;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 117
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 129
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v2

    .line 121
    :cond_1
    iget-object v3, p0, Lcom/android/phone/widget/SomcCallWidget;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 122
    .local v1, "ci":Landroid/content/pm/ComponentInfo;
    iget-object v0, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 123
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz p1, :cond_2

    .line 124
    iget-object v3, p0, Lcom/android/phone/widget/SomcCallWidget;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, p1, v0}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 125
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 129
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/widget/SomcCallWidget;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method private loadWidgetMetadata(Landroid/content/pm/ResolveInfo;)V
    .locals 11
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 188
    const/4 v5, 0x0

    .line 190
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, p0, Lcom/android/phone/widget/SomcCallWidget;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "com.sonymobile.callwidget.provider"

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageItemInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 192
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    .line 193
    .local v7, "type":I
    :goto_0
    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 195
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    goto :goto_0

    .line 197
    :cond_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "nodeName":Ljava/lang/String;
    const-string v8, "callwidget-provider"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 199
    const-string v8, "CallWidget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Meta-data does not start with callwidget-provider tag for CallWidget provider \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x27

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v1

    .line 203
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 205
    invoke-interface {v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "attrName":Ljava/lang/String;
    const-string v8, "CallWidget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadWidgetMetadata attrName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " val:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    :try_start_1
    invoke-static {v0}, Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;->valueOf(Ljava/lang/String;)Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;

    move-result-object v6

    .line 211
    .local v6, "prop":Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;
    sget-object v8, Lcom/android/phone/widget/SomcCallWidget$1;->$SwitchMap$com$android$phone$widget$SomcCallWidget$WidgetProperty:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 203
    .end local v6    # "prop":Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 213
    .restart local v6    # "prop":Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;
    :pswitch_0
    invoke-interface {v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/widget/SomcCallWidget;->getIntegerValue(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/phone/widget/SomcCallWidget;->mPrio:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 238
    .end local v6    # "prop":Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;
    :catch_0
    move-exception v2

    .line 239
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-boolean v8, Lcom/android/phone/widget/SomcCallWidget;->DBG:Z

    if-eqz v8, :cond_2

    const-string v8, "CallWidget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown attribute: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 242
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v1    # "count":I
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    .end local v4    # "nodeName":Ljava/lang/String;
    .end local v7    # "type":I
    :catch_1
    move-exception v2

    .line 243
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 245
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    return-void

    .line 216
    .restart local v0    # "attrName":Ljava/lang/String;
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "nodeName":Ljava/lang/String;
    .restart local v6    # "prop":Lcom/android/phone/widget/SomcCallWidget$WidgetProperty;
    .restart local v7    # "type":I
    :pswitch_1
    const/4 v8, 0x0

    :try_start_3
    invoke-interface {v5, v3, v8}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v8

    iput v8, p0, Lcom/android/phone/widget/SomcCallWidget;->mIconPressed:I

    goto :goto_2

    .line 219
    :pswitch_2
    const/4 v8, 0x0

    invoke-interface {v5, v3, v8}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v8

    iput v8, p0, Lcom/android/phone/widget/SomcCallWidget;->mIconDisabled:I

    goto :goto_2

    .line 222
    :pswitch_3
    invoke-interface {v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/phone/widget/SomcCallWidget;->mVisible:Z

    goto :goto_2

    .line 225
    :pswitch_4
    invoke-interface {v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/widget/SomcCallWidget;->convertStatusValueFromString(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/phone/widget/SomcCallWidget;->mStatus:I

    goto :goto_2

    .line 228
    :pswitch_5
    invoke-interface {v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/phone/widget/SomcCallWidget;->mVisibleWhenCalling:Z

    goto :goto_2

    .line 231
    :pswitch_6
    invoke-interface {v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/phone/widget/SomcCallWidget;->mVisibleOnIncomingCall:Z

    goto :goto_2

    .line 235
    :pswitch_7
    invoke-interface {v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/phone/widget/SomcCallWidget;->mVisibleDuringCall:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getActionHandler()Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidget;->mActionHandler:Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidget;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getDisabledIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/android/phone/widget/SomcCallWidget;->mIconDisabled:I

    invoke-direct {p0, v0}, Lcom/android/phone/widget/SomcCallWidget;->loadIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/phone/widget/SomcCallWidget;->mIconId:I

    invoke-direct {p0, v0}, Lcom/android/phone/widget/SomcCallWidget;->loadIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconPressed()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/android/phone/widget/SomcCallWidget;->mIconPressed:I

    invoke-direct {p0, v0}, Lcom/android/phone/widget/SomcCallWidget;->loadIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidget;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrio()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/phone/widget/SomcCallWidget;->mPrio:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/android/phone/widget/SomcCallWidget;->mStatus:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidget;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidget;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method public getVisibleDuringCall()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/phone/widget/SomcCallWidget;->mVisibleDuringCall:Z

    return v0
.end method

.method public getVisibleOnIncomingCall()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/phone/widget/SomcCallWidget;->mVisibleOnIncomingCall:Z

    return v0
.end method

.method public getVisibleWhenCalling()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/phone/widget/SomcCallWidget;->mVisibleWhenCalling:Z

    return v0
.end method

.method public hasPhoneStateAccess()Z
    .locals 9

    .prologue
    .line 138
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/widget/SomcCallWidget;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/phone/widget/SomcCallWidget;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x1000

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 141
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 142
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 143
    .local v5, "permission":Ljava/lang/String;
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 144
    const/4 v6, 0x1

    .line 154
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "permission":Ljava/lang/String;
    :goto_1
    return v6

    .line 146
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "permission":Ljava/lang/String;
    :cond_0
    const-string v6, "CallWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/widget/SomcCallWidget;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not have READ_PHONE_STATE permission"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "permission":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/phone/widget/SomcCallWidget;->mVisible:Z

    return v0
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "iconId"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/phone/widget/SomcCallWidget;->mIconId:I

    .line 89
    return-void
.end method

.method public setResolveInfo(Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/widget/SomcCallWidget;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 66
    invoke-direct {p0, p1}, Lcom/android/phone/widget/SomcCallWidget;->loadWidgetMetadata(Landroid/content/pm/ResolveInfo;)V

    .line 67
    iget v0, p1, Landroid/content/pm/ResolveInfo;->icon:I

    iput v0, p0, Lcom/android/phone/widget/SomcCallWidget;->mIconId:I

    .line 68
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidget;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/widget/SomcCallWidget;->mText:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 260
    iput p1, p0, Lcom/android/phone/widget/SomcCallWidget;->mStatus:I

    .line 261
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/phone/widget/SomcCallWidget;->mText:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/android/phone/widget/SomcCallWidget;->mVisible:Z

    .line 253
    return-void
.end method

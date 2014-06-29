.class Lcom/android/settings/munjeni/privacyguard/PrivacyGuardManager$1;
.super Ljava/lang/Object;
.source "PrivacyGuardManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/munjeni/privacyguard/PrivacyGuardManager;->loadInstalledApps()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/munjeni/privacyguard/PrivacyGuardManager$AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/munjeni/privacyguard/PrivacyGuardManager;


# direct methods
.method constructor <init>(Lcom/android/settings/munjeni/privacyguard/PrivacyGuardManager;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/settings/munjeni/privacyguard/PrivacyGuardManager$1;->this$0:Lcom/android/settings/munjeni/privacyguard/PrivacyGuardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/munjeni/privacyguard/PrivacyGuardManager$AppInfo;Lcom/android/settings/munjeni/privacyguard/PrivacyGuardManager$AppInfo;)I
    .locals 2
    .param p1, "lhs"    # Lcom/android/settings/munjeni/privacyguard/PrivacyGuardManager$AppInfo;
    .param p2, "rhs"    # Lcom/android/settings/munjeni/privacyguard/PrivacyGuardManager$AppInfo;

    .prologue
    .line 318
    iget-boolean v0, p1, Lcom/android/settings/munjeni/privacyguard/PrivacyGuardManager$AppInfo;->enabled:Z

    iget-boolean v1, p2, Lcom/android/settings/munjeni/privacyguard/PrivacyGuardManager$AppInfo;->enabled:Z

    if-eq v0, v1, :cond_1

    .line 319
    iget-boolean v0, p1, Lcom/android/settings/munjeni/privacyguard/PrivacyGuardManager$AppInfo;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 321
    :goto_0
    return v0

    .line 319
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 321
    :cond_1
    iget-object v0, p1, Lcom/android/settings/munjeni/privacyguard/PrivacyGuardManager$AppInfo;->title:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings/munjeni/privacyguard/PrivacyGuardManager$AppInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 315
    check-cast p1, Lcom/android/settings/munjeni/privacyguard/PrivacyGuardManager$AppInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings/munjeni/privacyguard/PrivacyGuardManager$AppInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/munjeni/privacyguard/PrivacyGuardManager$1;->compare(Lcom/android/settings/munjeni/privacyguard/PrivacyGuardManager$AppInfo;Lcom/android/settings/munjeni/privacyguard/PrivacyGuardManager$AppInfo;)I

    move-result v0

    return v0
.end method

.class Lcom/android/settings/Settings$4;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/Settings;->insertAccountsHeaders(Ljava/util/List;I)I
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
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Settings;


# direct methods
.method constructor <init>(Lcom/android/settings/Settings;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/settings/Settings$4;->this$0:Lcom/android/settings/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/preference/PreferenceActivity$Header;Landroid/preference/PreferenceActivity$Header;)I
    .locals 2
    .param p1, "h1"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "h2"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 730
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 727
    check-cast p1, Landroid/preference/PreferenceActivity$Header;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/preference/PreferenceActivity$Header;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/Settings$4;->compare(Landroid/preference/PreferenceActivity$Header;Landroid/preference/PreferenceActivity$Header;)I

    move-result v0

    return v0
.end method

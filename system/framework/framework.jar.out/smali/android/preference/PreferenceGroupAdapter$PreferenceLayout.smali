.class Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private resId:I

.field private widgetResId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/PreferenceGroupAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/preference/PreferenceGroupAdapter$1;

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>()V

    return-void
.end method

.method static synthetic access$202(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0
    .param p0, "x0"    # Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # I

    .prologue
    .line 95
    iput p1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    return p1
.end method

.method static synthetic access$402(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0
    .param p0, "x0"    # Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # I

    .prologue
    .line 95
    iput p1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    return p1
.end method


# virtual methods
.method public compareTo(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)I
    .locals 3
    .param p1, "other"    # Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .prologue
    .line 101
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, "compareNames":I
    if-nez v0, :cond_0

    .line 103
    iget v1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    iget v2, p1, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    if-ne v1, v2, :cond_2

    .line 104
    iget v1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    iget v2, p1, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    if-ne v1, v2, :cond_1

    .line 105
    const/4 v0, 0x0

    .line 113
    .end local v0    # "compareNames":I
    :cond_0
    :goto_0
    return v0

    .line 107
    .restart local v0    # "compareNames":I
    :cond_1
    iget v1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    iget v2, p1, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    sub-int v0, v1, v2

    goto :goto_0

    .line 110
    :cond_2
    iget v1, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    iget v2, p1, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 95
    check-cast p1, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->compareTo(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 129
    instance-of v1, p1, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    if-nez v1, :cond_1

    .line 130
    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    check-cast p1, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->compareTo(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 119
    const/16 v1, 0x1f

    .line 120
    .local v1, "prime":I
    const/16 v0, 0xd

    .line 121
    .local v0, "hash":I
    iget v2, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    add-int/lit16 v0, v2, 0x193

    .line 122
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    add-int v0, v2, v3

    .line 123
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v0, v3, v2

    .line 124
    return v0

    .line 123
    :cond_0
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

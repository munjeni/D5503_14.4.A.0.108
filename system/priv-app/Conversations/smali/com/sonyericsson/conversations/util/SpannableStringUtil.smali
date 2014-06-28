.class public Lcom/sonyericsson/conversations/util/SpannableStringUtil;
.super Ljava/lang/Object;
.source "SpannableStringUtil.java"


# static fields
.field public static final DEFAULT_REPLACE_STRING:Ljava/lang/String; = "%i"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static merge(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;
    .locals 7
    .param p0, "editString"    # Ljava/lang/String;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 27
    new-instance v1, Landroid/text/SpannableString;

    const-string v4, ""

    invoke-direct {v1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 40
    :cond_0
    :goto_0
    return-object v1

    .line 29
    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 30
    .local v1, "manipulatedString":Landroid/text/SpannableString;
    if-eqz p1, :cond_0

    .line 31
    const-string v4, "%i"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 32
    .local v3, "start":I
    if-ltz v3, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 35
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .local v2, "span":Landroid/text/style/ImageSpan;
    const-string v4, "%i"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v0, v3, v4

    .line 37
    .local v0, "end":I
    const/16 v4, 0x12

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

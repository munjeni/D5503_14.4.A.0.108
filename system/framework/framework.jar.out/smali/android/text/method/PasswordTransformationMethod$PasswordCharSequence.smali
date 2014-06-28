.class Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;
.super Ljava/lang/Object;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Landroid/text/GetChars;
.implements Landroid/text/GetSourceChars;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/PasswordTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PasswordCharSequence"
.end annotation


# instance fields
.field private mSource:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 149
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 8
    .param p1, "i"    # I

    .prologue
    .line 156
    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spanned;

    if-eqz v5, :cond_2

    .line 157
    iget-object v2, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    .line 159
    .local v2, "sp":Landroid/text/Spanned;
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 160
    .local v3, "st":I
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 162
    .local v1, "en":I
    if-lt p1, v3, :cond_0

    if-ge p1, v1, :cond_0

    .line 163
    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 180
    .end local v1    # "en":I
    .end local v2    # "sp":Landroid/text/Spanned;
    .end local v3    # "st":I
    :goto_0
    return v5

    .line 166
    .restart local v1    # "en":I
    .restart local v2    # "sp":Landroid/text/Spanned;
    .restart local v3    # "st":I
    :cond_0
    const/4 v5, 0x0

    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result v6

    const-class v7, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-interface {v2, v5, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 168
    .local v4, "visible":[Landroid/text/method/PasswordTransformationMethod$Visible;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 169
    aget-object v5, v4, v0

    # getter for: Landroid/text/method/PasswordTransformationMethod$Visible;->mTransformer:Landroid/text/method/PasswordTransformationMethod;
    invoke-static {v5}, Landroid/text/method/PasswordTransformationMethod$Visible;->access$000(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 170
    aget-object v5, v4, v0

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 171
    aget-object v5, v4, v0

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 173
    if-lt p1, v3, :cond_1

    if-ge p1, v1, :cond_1

    .line 174
    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    goto :goto_0

    .line 168
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    .end local v0    # "a":I
    .end local v1    # "en":I
    .end local v2    # "sp":Landroid/text/Spanned;
    .end local v3    # "st":I
    .end local v4    # "visible":[Landroid/text/method/PasswordTransformationMethod$Visible;
    :cond_2
    # getter for: Landroid/text/method/PasswordTransformationMethod;->DOT:C
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->access$100()C

    move-result v5

    goto :goto_0
.end method

.method public getChars(II[CI)V
    .locals 16
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "off"    # I

    .prologue
    .line 195
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v13, v0, v1, v2, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 197
    const/4 v10, -0x1

    .local v10, "st":I
    const/4 v5, -0x1

    .line 198
    .local v5, "en":I
    const/4 v8, 0x0

    .line 199
    .local v8, "nvisible":I
    const/4 v11, 0x0

    .local v11, "starts":[I
    const/4 v6, 0x0

    .line 201
    .local v6, "ends":[I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    instance-of v13, v13, Landroid/text/Spanned;

    if-eqz v13, :cond_1

    .line 202
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Spanned;

    .line 204
    .local v9, "sp":Landroid/text/Spanned;
    sget-object v13, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v9, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 205
    sget-object v13, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v9, v13}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 207
    const/4 v13, 0x0

    invoke-interface {v9}, Landroid/text/Spanned;->length()I

    move-result v14

    const-class v15, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-interface {v9, v13, v14, v15}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 208
    .local v12, "visible":[Landroid/text/method/PasswordTransformationMethod$Visible;
    array-length v8, v12

    .line 209
    new-array v11, v8, [I

    .line 210
    new-array v6, v8, [I

    .line 212
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 213
    aget-object v13, v12, v7

    # getter for: Landroid/text/method/PasswordTransformationMethod$Visible;->mTransformer:Landroid/text/method/PasswordTransformationMethod;
    invoke-static {v13}, Landroid/text/method/PasswordTransformationMethod$Visible;->access$000(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    move-result-object v13

    invoke-interface {v9, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    if-ltz v13, :cond_0

    .line 214
    aget-object v13, v12, v7

    invoke-interface {v9, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    aput v13, v11, v7

    .line 215
    aget-object v13, v12, v7

    invoke-interface {v9, v13}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    aput v13, v6, v7

    .line 212
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 220
    .end local v7    # "i":I
    .end local v9    # "sp":Landroid/text/Spanned;
    .end local v12    # "visible":[Landroid/text/method/PasswordTransformationMethod$Visible;
    :cond_1
    move/from16 v7, p1

    .restart local v7    # "i":I
    :goto_1
    move/from16 v0, p2

    if-ge v7, v0, :cond_6

    .line 221
    if-lt v7, v10, :cond_2

    if-lt v7, v5, :cond_4

    .line 222
    :cond_2
    const/4 v12, 0x0

    .line 224
    .local v12, "visible":Z
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_2
    if-ge v4, v8, :cond_3

    .line 225
    aget v13, v11, v4

    if-lt v7, v13, :cond_5

    aget v13, v6, v4

    if-ge v7, v13, :cond_5

    .line 226
    const/4 v12, 0x1

    .line 231
    :cond_3
    if-nez v12, :cond_4

    .line 232
    sub-int v13, v7, p1

    add-int v13, v13, p4

    # getter for: Landroid/text/method/PasswordTransformationMethod;->DOT:C
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->access$100()C

    move-result v14

    aput-char v14, p3, v13

    .line 220
    .end local v4    # "a":I
    .end local v12    # "visible":Z
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 224
    .restart local v4    # "a":I
    .restart local v12    # "visible":Z
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 236
    .end local v4    # "a":I
    .end local v12    # "visible":Z
    :cond_6
    return-void
.end method

.method public getSourceChars(II[CI)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "off"    # I

    .prologue
    .line 239
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 240
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 184
    sub-int v1, p2, p1

    new-array v0, v1, [C

    .line 186
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->getChars(II[CI)V

    .line 187
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

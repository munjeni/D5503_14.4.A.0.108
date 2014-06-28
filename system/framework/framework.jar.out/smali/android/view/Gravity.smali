.class public Landroid/view/Gravity;
.super Ljava/lang/Object;
.source "Gravity.java"


# static fields
.field public static final AXIS_CLIP:I = 0x8

.field public static final AXIS_PULL_AFTER:I = 0x4

.field public static final AXIS_PULL_BEFORE:I = 0x2

.field public static final AXIS_SPECIFIED:I = 0x1

.field public static final AXIS_X_SHIFT:I = 0x0

.field public static final AXIS_Y_SHIFT:I = 0x4

.field public static final BOTTOM:I = 0x50

.field public static final CENTER:I = 0x11

.field public static final CENTER_HORIZONTAL:I = 0x1

.field public static final CENTER_VERTICAL:I = 0x10

.field public static final CLIP_HORIZONTAL:I = 0x8

.field public static final CLIP_VERTICAL:I = 0x80

.field public static final DISPLAY_CLIP_HORIZONTAL:I = 0x1000000

.field public static final DISPLAY_CLIP_VERTICAL:I = 0x10000000

.field public static final END:I = 0x800005

.field public static final FILL:I = 0x77

.field public static final FILL_HORIZONTAL:I = 0x7

.field public static final FILL_VERTICAL:I = 0x70

.field public static final HORIZONTAL_GRAVITY_MASK:I = 0x7

.field public static final LEFT:I = 0x3

.field public static final NO_GRAVITY:I = 0x0

.field public static final RELATIVE_HORIZONTAL_GRAVITY_MASK:I = 0x800007

.field public static final RELATIVE_LAYOUT_DIRECTION:I = 0x800000

.field public static final RIGHT:I = 0x5

.field public static final START:I = 0x800003

.field public static final TOP:I = 0x30

.field public static final VERTICAL_GRAVITY_MASK:I = 0x70


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 7
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "xAdj"    # I
    .param p5, "yAdj"    # I
    .param p6, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/16 v6, 0x80

    const/16 v5, 0x8

    const/high16 v4, -0x80000000

    const v3, 0x7fffffff

    .line 192
    and-int/lit8 v0, p0, 0x6

    packed-switch v0, :pswitch_data_0

    .line 250
    :pswitch_0
    iget v0, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 251
    iget v0, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 252
    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p6, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_0

    .line 253
    iget v0, p3, Landroid/graphics/Rect;->right:I

    sub-int v0, v3, v0

    iget v1, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 254
    iput v3, p6, Landroid/graphics/Rect;->right:I

    .line 259
    :cond_0
    :goto_0
    and-int/lit8 v0, p0, 0x60

    sparse-switch v0, :sswitch_data_0

    .line 317
    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 318
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 319
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p6, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_1

    .line 320
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v0

    iget v1, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 321
    iput v3, p6, Landroid/graphics/Rect;->bottom:I

    .line 325
    :cond_1
    :goto_1
    return-void

    .line 194
    :pswitch_1
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 196
    iget v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 197
    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p6, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_2

    .line 198
    if-lez p4, :cond_4

    .line 199
    sub-int v0, v3, p1

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 200
    iput v3, p6, Landroid/graphics/Rect;->right:I

    .line 206
    :cond_2
    :goto_2
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v5, :cond_0

    .line 208
    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_3

    .line 209
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 211
    :cond_3
    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_0

    .line 212
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 202
    :cond_4
    iput v4, p6, Landroid/graphics/Rect;->left:I

    .line 203
    add-int v0, v4, p1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 217
    :pswitch_2
    iget v0, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 218
    iget v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 219
    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p6, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_5

    .line 220
    sub-int v0, v3, p1

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 221
    iput v3, p6, Landroid/graphics/Rect;->right:I

    .line 223
    :cond_5
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v5, :cond_0

    .line 225
    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_0

    .line 226
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 231
    :pswitch_3
    iget v0, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 232
    iget v0, p6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 233
    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p6, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_6

    .line 234
    if-lez p4, :cond_7

    .line 235
    iput v4, p6, Landroid/graphics/Rect;->left:I

    .line 236
    add-int v0, v4, p1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 242
    :cond_6
    :goto_3
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v5, :cond_0

    .line 244
    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_0

    .line 245
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 238
    :cond_7
    sub-int v0, v3, p1

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 239
    iput v3, p6, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 261
    :sswitch_0
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 263
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 264
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p6, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_8

    .line 265
    if-lez p5, :cond_a

    .line 266
    sub-int v0, v3, p2

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 267
    iput v3, p6, Landroid/graphics/Rect;->bottom:I

    .line 273
    :cond_8
    :goto_4
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v6, :cond_1

    .line 275
    iget v0, p6, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_9

    .line 276
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 278
    :cond_9
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_1

    .line 279
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 269
    :cond_a
    iput v4, p6, Landroid/graphics/Rect;->top:I

    .line 270
    add-int v0, v4, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 284
    :sswitch_1
    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 285
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 286
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p6, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_b

    .line 287
    sub-int v0, v3, p2

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 288
    iput v3, p6, Landroid/graphics/Rect;->bottom:I

    .line 290
    :cond_b
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v6, :cond_1

    .line 292
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_1

    .line 293
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 298
    :sswitch_2
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 299
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 300
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p6, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_c

    .line 301
    if-lez p5, :cond_d

    .line 302
    iput v4, p6, Landroid/graphics/Rect;->top:I

    .line 303
    add-int v0, v4, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 309
    :cond_c
    :goto_5
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v6, :cond_1

    .line 311
    iget v0, p6, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_1

    .line 312
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1

    .line 305
    :cond_d
    sub-int v0, v3, p2

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 306
    iput v3, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 259
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_2
    .end sparse-switch
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .locals 7
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "xAdj"    # I
    .param p5, "yAdj"    # I
    .param p6, "outRect"    # Landroid/graphics/Rect;
    .param p7, "layoutDirection"    # I

    .prologue
    .line 354
    invoke-static {p0, p7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .local v0, "absGravity":I
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 355
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 356
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 143
    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 144
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 7
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "outRect"    # Landroid/graphics/Rect;
    .param p5, "layoutDirection"    # I

    .prologue
    const/4 v4, 0x0

    .line 165
    invoke-static {p0, p5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .local v0, "absGravity":I
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    move-object v6, p4

    .line 166
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 167
    return-void
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p0, "gravity"    # I
    .param p1, "display"    # Landroid/graphics/Rect;
    .param p2, "inoutObj"    # Landroid/graphics/Rect;

    .prologue
    .line 375
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    .line 376
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 377
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 393
    :cond_1
    :goto_0
    const/high16 v1, 0x1000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_8

    .line 394
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 395
    :cond_2
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 410
    :cond_3
    :goto_1
    return-void

    .line 379
    :cond_4
    const/4 v0, 0x0

    .line 380
    .local v0, "off":I
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_6

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v2

    .line 382
    :cond_5
    :goto_2
    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_7

    .line 384
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 385
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 381
    :cond_6
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_5

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v2

    goto :goto_2

    .line 387
    :cond_7
    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 388
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 397
    .end local v0    # "off":I
    :cond_8
    const/4 v0, 0x0

    .line 398
    .restart local v0    # "off":I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_a

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v2

    .line 400
    :cond_9
    :goto_3
    if-eqz v0, :cond_3

    .line 401
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_b

    .line 402
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 403
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 399
    :cond_a
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_9

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v2

    goto :goto_3

    .line 405
    :cond_b
    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 406
    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_1
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 1
    .param p0, "gravity"    # I
    .param p1, "display"    # Landroid/graphics/Rect;
    .param p2, "inoutObj"    # Landroid/graphics/Rect;
    .param p3, "layoutDirection"    # I

    .prologue
    .line 433
    invoke-static {p0, p3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 434
    .local v0, "absGravity":I
    invoke-static {v0, p1, p2}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 435
    return-void
.end method

.method public static getAbsoluteGravity(II)I
    .locals 5
    .param p0, "gravity"    # I
    .param p1, "layoutDirection"    # I

    .prologue
    const v4, 0x800005

    const v3, 0x800003

    const/4 v2, 0x1

    .line 469
    move v0, p0

    .line 471
    .local v0, "result":I
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-lez v1, :cond_1

    .line 472
    and-int v1, v0, v3

    if-ne v1, v3, :cond_3

    .line 474
    const v1, -0x800004

    and-int/2addr v0, v1

    .line 475
    if-ne p1, v2, :cond_2

    .line 477
    or-int/lit8 v0, v0, 0x5

    .line 495
    :cond_0
    :goto_0
    const v1, -0x800001

    and-int/2addr v0, v1

    .line 497
    :cond_1
    return v0

    .line 480
    :cond_2
    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 482
    :cond_3
    and-int v1, v0, v4

    if-ne v1, v4, :cond_0

    .line 484
    const v1, -0x800006

    and-int/2addr v0, v1

    .line 485
    if-ne p1, v2, :cond_4

    .line 487
    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 490
    :cond_4
    or-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public static isHorizontal(I)Z
    .locals 1
    .param p0, "gravity"    # I

    .prologue
    .line 454
    if-lez p0, :cond_0

    const v0, 0x800007

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVertical(I)Z
    .locals 1
    .param p0, "gravity"    # I

    .prologue
    .line 444
    if-lez p0, :cond_0

    and-int/lit8 v0, p0, 0x70

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

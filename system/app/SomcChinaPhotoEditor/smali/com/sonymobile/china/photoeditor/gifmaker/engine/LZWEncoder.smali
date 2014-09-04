.class public Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;
.super Ljava/lang/Object;
.source "LZWEncoder.java"


# static fields
.field static final BITS:I = 0xc

.field private static final EOF:I = -0x1

.field static final HSIZE:I = 0x138b


# instance fields
.field ClearCode:I

.field EOFCode:I

.field a_count:I

.field accum:[B

.field clear_flg:Z

.field codetab:[I

.field private curPixel:I

.field cur_accum:I

.field cur_bits:I

.field free_ent:I

.field g_init_bits:I

.field hsize:I

.field htab:[I

.field private imgH:I

.field private imgW:I

.field private initCodeSize:I

.field masks:[I

.field maxbits:I

.field maxcode:I

.field maxmaxcode:I

.field n_bits:I

.field private pixAry:[B

.field private remaining:I


# direct methods
.method constructor <init>(II[BI)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixels"    # [B
    .param p4, "color_depth"    # I

    .prologue
    const/16 v2, 0x138b

    const/4 v1, 0x0

    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0xc

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->maxbits:I

    .line 55
    const/16 v0, 0x1000

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->maxmaxcode:I

    .line 57
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->htab:[I

    .line 59
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->codetab:[I

    .line 61
    iput v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->hsize:I

    .line 63
    iput v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->free_ent:I

    .line 67
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->clear_flg:Z

    .line 102
    iput v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_accum:I

    .line 104
    iput v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_bits:I

    .line 106
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->masks:[I

    .line 115
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->accum:[B

    .line 119
    iput p1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->imgW:I

    .line 120
    iput p2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->imgH:I

    .line 121
    iput-object p3, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->pixAry:[B

    .line 122
    const/4 v0, 0x2

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->initCodeSize:I

    .line 123
    return-void

    .line 106
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data
.end method

.method private nextPixel()I
    .locals 4

    .prologue
    .line 249
    iget v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->remaining:I

    if-nez v1, :cond_0

    .line 250
    const/4 v1, -0x1

    .line 256
    :goto_0
    return v1

    .line 252
    :cond_0
    iget v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->remaining:I

    .line 254
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->pixAry:[B

    iget v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->curPixel:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->curPixel:I

    aget-byte v0, v1, v2

    .line 256
    .local v0, "pix":B
    and-int/lit16 v1, v0, 0xff

    goto :goto_0
.end method


# virtual methods
.method final MAXCODE(I)I
    .locals 1
    .param p1, "n_bits"    # I

    .prologue
    .line 242
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method char_out(BLjava/io/OutputStream;)V
    .locals 3
    .param p1, "c"    # B
    .param p2, "outs"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->accum:[B

    iget v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->a_count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->a_count:I

    aput-byte p1, v0, v1

    .line 129
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->a_count:I

    const/16 v1, 0xfe

    if-lt v0, v1, :cond_0

    .line 130
    invoke-virtual {p0, p2}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->flush_char(Ljava/io/OutputStream;)V

    .line 131
    :cond_0
    return-void
.end method

.method cl_block(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outs"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->hsize:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cl_hash(I)V

    .line 138
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->ClearCode:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->free_ent:I

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->clear_flg:Z

    .line 141
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->ClearCode:I

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 142
    return-void
.end method

.method cl_hash(I)V
    .locals 3
    .param p1, "hsize"    # I

    .prologue
    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->htab:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

.method compress(ILjava/io/OutputStream;)V
    .locals 10
    .param p1, "init_bits"    # I
    .param p2, "outs"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 160
    iput p1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->g_init_bits:I

    .line 163
    iput-boolean v9, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->clear_flg:Z

    .line 164
    iget v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->g_init_bits:I

    iput v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->n_bits:I

    .line 165
    iget v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->n_bits:I

    invoke-virtual {p0, v7}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->MAXCODE(I)I

    move-result v7

    iput v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->maxcode:I

    .line 167
    const/4 v7, 0x1

    add-int/lit8 v8, p1, -0x1

    shl-int/2addr v7, v8

    iput v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->ClearCode:I

    .line 168
    iget v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->ClearCode:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->EOFCode:I

    .line 169
    iget v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->ClearCode:I

    add-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->free_ent:I

    .line 171
    iput v9, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->a_count:I

    .line 173
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->nextPixel()I

    move-result v2

    .line 175
    .local v2, "ent":I
    const/4 v4, 0x0

    .line 176
    .local v4, "hshift":I
    iget v3, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->hsize:I

    .local v3, "fcode":I
    :goto_0
    const/high16 v7, 0x10000

    if-ge v3, v7, :cond_0

    .line 177
    add-int/lit8 v4, v4, 0x1

    .line 176
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 178
    :cond_0
    rsub-int/lit8 v4, v4, 0x8

    .line 180
    iget v5, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->hsize:I

    .line 181
    .local v5, "hsize_reg":I
    invoke-virtual {p0, v5}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cl_hash(I)V

    .line 183
    iget v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->ClearCode:I

    invoke-virtual {p0, v7, p2}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 185
    :goto_1
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->nextPixel()I

    move-result v0

    .local v0, "c":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_7

    .line 186
    iget v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->maxbits:I

    shl-int v7, v0, v7

    add-int v3, v7, v2

    .line 187
    shl-int v7, v0, v4

    xor-int v6, v7, v2

    .line 189
    .local v6, "i":I
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->htab:[I

    aget v7, v7, v6

    if-ne v7, v3, :cond_1

    .line 190
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->codetab:[I

    aget v2, v7, v6

    .line 191
    goto :goto_1

    .line 192
    :cond_1
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->htab:[I

    aget v7, v7, v6

    if-ltz v7, :cond_5

    .line 194
    sub-int v1, v5, v6

    .line 195
    .local v1, "disp":I
    if-nez v6, :cond_2

    .line 196
    const/4 v1, 0x1

    .line 198
    :cond_2
    sub-int/2addr v6, v1

    if-gez v6, :cond_3

    .line 199
    add-int/2addr v6, v5

    .line 201
    :cond_3
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->htab:[I

    aget v7, v7, v6

    if-ne v7, v3, :cond_4

    .line 202
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->codetab:[I

    aget v2, v7, v6

    .line 203
    goto :goto_1

    .line 205
    :cond_4
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->htab:[I

    aget v7, v7, v6

    if-gez v7, :cond_2

    .line 207
    .end local v1    # "disp":I
    :cond_5
    invoke-virtual {p0, v2, p2}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 208
    move v2, v0

    .line 209
    iget v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->free_ent:I

    iget v8, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->maxmaxcode:I

    if-ge v7, v8, :cond_6

    .line 210
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->codetab:[I

    iget v8, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->free_ent:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->free_ent:I

    aput v8, v7, v6

    .line 211
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->htab:[I

    aput v3, v7, v6

    goto :goto_1

    .line 213
    :cond_6
    invoke-virtual {p0, p2}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cl_block(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 216
    .end local v6    # "i":I
    :cond_7
    invoke-virtual {p0, v2, p2}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 217
    iget v7, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->EOFCode:I

    invoke-virtual {p0, v7, p2}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 218
    return-void
.end method

.method encode(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 222
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->initCodeSize:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 224
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->imgW:I

    iget v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->imgH:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->remaining:I

    .line 225
    iput v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->curPixel:I

    .line 227
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->initCodeSize:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->compress(ILjava/io/OutputStream;)V

    .line 229
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 230
    return-void
.end method

.method flush_char(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "outs"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 234
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->a_count:I

    if-lez v0, :cond_0

    .line 235
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->a_count:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 236
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->accum:[B

    iget v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->a_count:I

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 237
    iput v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->a_count:I

    .line 239
    :cond_0
    return-void
.end method

.method output(ILjava/io/OutputStream;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "outs"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_accum:I

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->masks:[I

    iget v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_bits:I

    aget v1, v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_accum:I

    .line 262
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_bits:I

    if-lez v0, :cond_0

    .line 264
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_accum:I

    iget v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_bits:I

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_accum:I

    .line 268
    :goto_0
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_bits:I

    iget v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->n_bits:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_bits:I

    .line 269
    :goto_1
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_bits:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 270
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_accum:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0, p2}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->char_out(BLjava/io/OutputStream;)V

    .line 271
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_accum:I

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_accum:I

    .line 272
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_bits:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_bits:I

    goto :goto_1

    .line 266
    :cond_0
    iput p1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_accum:I

    goto :goto_0

    .line 277
    :cond_1
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->free_ent:I

    iget v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->maxcode:I

    if-gt v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->clear_flg:Z

    if-eqz v0, :cond_3

    .line 278
    :cond_2
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->clear_flg:Z

    if-eqz v0, :cond_4

    .line 279
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->g_init_bits:I

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->n_bits:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->MAXCODE(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->maxcode:I

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->clear_flg:Z

    .line 290
    :cond_3
    :goto_2
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->EOFCode:I

    if-ne p1, v0, :cond_7

    .line 292
    :goto_3
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_bits:I

    if-lez v0, :cond_6

    .line 293
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_accum:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0, p2}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->char_out(BLjava/io/OutputStream;)V

    .line 294
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_accum:I

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_accum:I

    .line 295
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_bits:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->cur_bits:I

    goto :goto_3

    .line 282
    :cond_4
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->n_bits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->n_bits:I

    .line 283
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->n_bits:I

    iget v1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->maxbits:I

    if-ne v0, v1, :cond_5

    .line 284
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->maxmaxcode:I

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->maxcode:I

    goto :goto_2

    .line 286
    :cond_5
    iget v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->n_bits:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->MAXCODE(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->maxcode:I

    goto :goto_2

    .line 298
    :cond_6
    invoke-virtual {p0, p2}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/LZWEncoder;->flush_char(Ljava/io/OutputStream;)V

    .line 300
    :cond_7
    return-void
.end method

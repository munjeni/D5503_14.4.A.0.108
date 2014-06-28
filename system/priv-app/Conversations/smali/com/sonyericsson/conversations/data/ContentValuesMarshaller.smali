.class Lcom/sonyericsson/conversations/data/ContentValuesMarshaller;
.super Ljava/lang/Object;
.source "ContentValuesMarshaller.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static marshalAddrsCV(Landroid/content/ContentValues;[Landroid/content/ContentValues;)V
    .locals 5
    .param p0, "storeValues"    # Landroid/content/ContentValues;
    .param p1, "valuesArray"    # [Landroid/content/ContentValues;

    .prologue
    .line 42
    if-eqz p1, :cond_2

    array-length v3, p1

    if-lez v3, :cond_2

    .line 43
    const-string v3, "addr_count"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 44
    .local v1, "index":Ljava/lang/Integer;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 45
    .local v2, "startIndex":I
    :goto_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-gt v0, v3, :cond_1

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cvs_addr_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    aget-object v4, p1, v4

    invoke-static {p0, v3, v4}, Lcom/sonyericsson/conversations/data/ContentValuesMarshaller;->marshalContentValues(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    .end local v0    # "i":I
    .end local v2    # "startIndex":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 48
    .restart local v0    # "i":I
    .restart local v2    # "startIndex":I
    :cond_1
    const-string v3, "addr_count"

    array-length v4, p1

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    .end local v0    # "i":I
    .end local v1    # "index":Ljava/lang/Integer;
    .end local v2    # "startIndex":I
    :cond_2
    return-void
.end method

.method static marshalContentValues(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 7
    .param p0, "storeValues"    # Landroid/content/ContentValues;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 71
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .local v3, "json":Lorg/json/JSONObject;
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v4

    .line 73
    .local v4, "valueSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 74
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 75
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 77
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 82
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .end local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "valueSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_1
    return-void
.end method

.method static marshalInboxCV(Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1
    .param p0, "storeValues"    # Landroid/content/ContentValues;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 38
    const-string v0, "cvs_messagebox"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/conversations/data/ContentValuesMarshaller;->marshalContentValues(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 39
    return-void
.end method

.method static marshalPartsCV(Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 4
    .param p0, "storeValues"    # Landroid/content/ContentValues;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 53
    const-string v2, "multimediapart_count"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 54
    .local v1, "index":Ljava/lang/Integer;
    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 55
    .local v0, "currentIndex":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cvs_multimediapart_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p1}, Lcom/sonyericsson/conversations/data/ContentValuesMarshaller;->marshalContentValues(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 56
    const-string v2, "multimediapart_count"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    return v0

    .line 54
    .end local v0    # "currentIndex":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    goto :goto_0
.end method

.method static marshalPartsDataCV(Landroid/content/ContentValues;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "storeValues"    # Landroid/content/ContentValues;
    .param p1, "index"    # I
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "contentData"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "content_type"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "content_data"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multimediapart_content_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/sonyericsson/conversations/data/ContentValuesMarshaller;->marshalContentValues(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 66
    return-void
.end method

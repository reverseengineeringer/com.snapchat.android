.class public final Laxv;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<",
        "Laxu;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/gson/stream/JsonReader;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 34
    :goto_0
    return-object v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 14
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Laxv;->a(Lcom/google/gson/stream/JsonReader;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Laxv;->a(Lcom/google/gson/stream/JsonReader;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    new-instance v0, Laxu;

    invoke-direct/range {v0 .. v5}, Laxu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public final synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 14
    check-cast p2, Laxu;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    iget-object v0, p2, Laxu;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object v0, p2, Laxu;->mIv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object v0, p2, Laxu;->mThumbnailIv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-wide v0, p2, Laxu;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

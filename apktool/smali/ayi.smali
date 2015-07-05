.class public final Layi;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<",
        "Layh;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 9
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->values()[Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    new-instance v2, Layh;

    invoke-direct {v2, v0, v1}, Layh;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    return-object v2
.end method

.method public final synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 9
    check-cast p2, Layh;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    iget-object v0, p2, Layh;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object v0, p2, Layh;->mType:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->ordinal()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

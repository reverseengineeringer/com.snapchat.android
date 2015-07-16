.class final Lcom/snapchat/android/discover/api2/SendDSnapTask$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/api2/SendDSnapTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field final mBodyType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "body_type"
    .end annotation
.end field

.field final mHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_height"
    .end annotation
.end field

.field final mMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_id"
    .end annotation
.end field

.field final mMediaIv:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_enc_iv"
    .end annotation
.end field

.field final mMediaKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_enc_key"
    .end annotation
.end field

.field final mMediaType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_type"
    .end annotation
.end field

.field final mRecipientIds:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipient_ids"
    .end annotation
.end field

.field final mRecipients:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipients"
    .end annotation
.end field

.field final mSeqNums:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seq_nums"
    .end annotation
.end field

.field final mWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_width"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/discover/api2/SendDSnapTask;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/discover/api2/SendDSnapTask;)V
    .locals 4

    .prologue
    .line 125
    iput-object p1, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask$a;->this$0:Lcom/snapchat/android/discover/api2/SendDSnapTask;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask$a;->this$0:Lcom/snapchat/android/discover/api2/SendDSnapTask;

    invoke-static {v0}, Lcom/snapchat/android/discover/api2/SendDSnapTask;->a(Lcom/snapchat/android/discover/api2/SendDSnapTask;)Laji;

    move-result-object v0

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask$a;->mMediaId:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask$a;->this$0:Lcom/snapchat/android/discover/api2/SendDSnapTask;

    invoke-static {v0}, Lcom/snapchat/android/discover/api2/SendDSnapTask;->a(Lcom/snapchat/android/discover/api2/SendDSnapTask;)Laji;

    move-result-object v0

    invoke-virtual {v0}, Laji;->h()I

    move-result v0

    invoke-static {v0}, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->fromSnapMediaType(I)Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask$a;->mMediaType:Ljava/lang/String;

    .line 112
    sget-object v0, Laln;->DISCOVER_SHARE:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask$a;->mBodyType:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask$a;->this$0:Lcom/snapchat/android/discover/api2/SendDSnapTask;

    invoke-static {v0}, Lcom/snapchat/android/discover/api2/SendDSnapTask;->b(Lcom/snapchat/android/discover/api2/SendDSnapTask;)Laeb;

    move-result-object v0

    iget-object v0, v0, Laeb;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask$a;->mMediaKey:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask$a;->this$0:Lcom/snapchat/android/discover/api2/SendDSnapTask;

    invoke-static {v0}, Lcom/snapchat/android/discover/api2/SendDSnapTask;->b(Lcom/snapchat/android/discover/api2/SendDSnapTask;)Laeb;

    move-result-object v0

    iget-object v0, v0, Laeb;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask$a;->mMediaIv:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask$a;->this$0:Lcom/snapchat/android/discover/api2/SendDSnapTask;

    invoke-static {v0}, Lcom/snapchat/android/discover/api2/SendDSnapTask;->a(Lcom/snapchat/android/discover/api2/SendDSnapTask;)Laji;

    move-result-object v0

    iget v0, v0, Lcom/snapchat/android/model/Mediabryo;->mWidth:I

    iput v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask$a;->mWidth:I

    .line 120
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask$a;->this$0:Lcom/snapchat/android/discover/api2/SendDSnapTask;

    invoke-static {v0}, Lcom/snapchat/android/discover/api2/SendDSnapTask;->a(Lcom/snapchat/android/discover/api2/SendDSnapTask;)Laji;

    move-result-object v0

    iget v0, v0, Lcom/snapchat/android/model/Mediabryo;->mHeight:I

    iput v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask$a;->mHeight:I

    .line 126
    invoke-static {p1}, Lcom/snapchat/android/discover/api2/SendDSnapTask;->c(Lcom/snapchat/android/discover/api2/SendDSnapTask;)Lakg;

    move-result-object v0

    invoke-virtual {v0}, Lakg;->f()[Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {p1}, Lcom/snapchat/android/discover/api2/SendDSnapTask;->c(Lcom/snapchat/android/discover/api2/SendDSnapTask;)Lakg;

    move-result-object v1

    invoke-virtual {v1}, Lakg;->g()Ljava/util/List;

    move-result-object v1

    .line 128
    invoke-static {p1}, Lcom/snapchat/android/discover/api2/SendDSnapTask;->d(Lcom/snapchat/android/discover/api2/SendDSnapTask;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0}, Lcom/snapchat/android/discover/api2/SendDSnapTask;->a([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 129
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, ","

    invoke-static {v0, v2}, Lavz;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask$a;->mRecipients:Ljava/lang/String;

    .line 130
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const-string v0, ","

    invoke-static {v1, v0}, Lavz;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask$a;->mRecipientIds:Ljava/lang/String;

    .line 135
    :goto_0
    invoke-static {p1}, Lcom/snapchat/android/discover/api2/SendDSnapTask;->e(Lcom/snapchat/android/discover/api2/SendDSnapTask;)Laum;

    move-result-object v0

    invoke-static {p1}, Lcom/snapchat/android/discover/api2/SendDSnapTask;->d(Lcom/snapchat/android/discover/api2/SendDSnapTask;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Laum;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask$a;->mSeqNums:Ljava/lang/String;

    .line 136
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask$a;->mRecipientIds:Ljava/lang/String;

    goto :goto_0
.end method

.class public final Labw$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Lty;
.end annotation


# instance fields
.field data:Lti;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field mMediaId:Lul;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_id"
    .end annotation
.end field

.field mRequestToken:Lul;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "req_token"
    .end annotation
.end field

.field mTimestamp:Lul;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field mType:Lul;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field mUsername:Lul;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field

.field final synthetic this$0:Labw;


# direct methods
.method public constructor <init>(Labw;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 99
    iput-object p1, p0, Labw$a;->this$0:Labw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lul;

    invoke-direct {v0, p2}, Lul;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Labw$a;->mTimestamp:Lul;

    .line 101
    new-instance v0, Lul;

    invoke-static {p2}, Los;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lul;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Labw$a;->mRequestToken:Lul;

    .line 102
    new-instance v0, Lul;

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lul;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Labw$a;->mUsername:Lul;

    .line 103
    new-instance v0, Lul;

    invoke-static {p1}, Labw;->a(Labw;)Laim;

    move-result-object v1

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lul;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Labw$a;->mMediaId:Lul;

    .line 104
    new-instance v0, Lul;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lul;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Labw$a;->mType:Lul;

    .line 105
    new-instance v0, Lti;

    invoke-static {p1}, Labw;->b(Labw;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lti;-><init>([B)V

    iput-object v0, p0, Labw$a;->data:Lti;

    .line 106
    return-void
.end method

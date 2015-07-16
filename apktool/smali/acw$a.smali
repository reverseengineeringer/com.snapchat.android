.class public final Lacw$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Luo;
.end annotation


# instance fields
.field data:Lty;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field mMediaId:Lvc;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_id"
    .end annotation
.end field

.field mRequestToken:Lvc;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "req_token"
    .end annotation
.end field

.field mTimestamp:Lvc;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field mType:Lvc;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field mUsername:Lvc;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field

.field final synthetic this$0:Lacw;


# direct methods
.method public constructor <init>(Lacw;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 99
    iput-object p1, p0, Lacw$a;->this$0:Lacw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lvc;

    invoke-direct {v0, p2}, Lvc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lacw$a;->mTimestamp:Lvc;

    .line 101
    new-instance v0, Lvc;

    invoke-static {p2}, Lpj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lvc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lacw$a;->mRequestToken:Lvc;

    .line 102
    new-instance v0, Lvc;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lvc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lacw$a;->mUsername:Lvc;

    .line 103
    new-instance v0, Lvc;

    invoke-static {p1}, Lacw;->a(Lacw;)Laji;

    move-result-object v1

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lvc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lacw$a;->mMediaId:Lvc;

    .line 104
    new-instance v0, Lvc;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lvc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lacw$a;->mType:Lvc;

    .line 105
    new-instance v0, Lty;

    invoke-static {p1}, Lacw;->b(Lacw;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lty;-><init>([B)V

    iput-object v0, p0, Lacw$a;->data:Lty;

    .line 106
    return-void
.end method

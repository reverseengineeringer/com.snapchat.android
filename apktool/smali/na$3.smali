.class final Lna$3;
.super Lul;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lna;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lna;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lna;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lna$3;->this$0:Lna;

    iput-object p2, p0, Lna$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Lul;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMethod()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 590
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->GET:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lna$3;->val$url:Ljava/lang/String;

    return-object v0
.end method

.method public final onResult(Lus;)V
    .locals 3
    .param p1    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 595
    invoke-super {p0, p1}, Lul;->onResult(Lus;)V

    .line 596
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lna$3;->val$url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 601
    return-void
.end method

.class public final Lsv;
.super Ltg;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltg;",
        "Lui$b",
        "<",
        "Ltm;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RetrieveCashCustomerStatusTask"


# instance fields
.field private mListener:Lsz;


# direct methods
.method public constructor <init>(Lsz;)V
    .locals 1
    .param p1    # Lsz;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0}, Ltg;-><init>()V

    .line 25
    iput-object p1, p0, Lsv;->mListener:Lsz;

    .line 26
    const-class v0, Ltm;

    invoke-virtual {p0, v0, p0}, Lsv;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "cash"

    return-object v0
.end method

.method public final getMethod()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->GET:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 3

    .prologue
    .line 18
    check-cast p1, Ltm;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p2, Lus;->mResponseCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v0, p2, Lus;->mResponseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lsv;->mListener:Lsz;

    invoke-interface {v0, p1}, Lsz;->a(Ltm;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsv;->mListener:Lsz;

    iget v1, p2, Lus;->mResponseCode:I

    invoke-interface {v0, v1}, Lsz;->a(I)V

    goto :goto_0
.end method

.class public final Lqr;
.super Lth;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqr$a;
    }
.end annotation


# instance fields
.field final mConversationId:Ljava/lang/String;

.field final mTransactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Lth;-><init>()V

    .line 19
    iput-object p1, p0, Lqr;->mTransactionId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lqr;->mConversationId:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lqr$a;

    invoke-direct {v0, p0}, Lqr$a;-><init>(Lqr;)V

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "/cash/transaction"

    return-object v0
.end method

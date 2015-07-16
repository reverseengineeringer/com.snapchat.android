.class public final Luv;
.super Lbne;
.source "SourceFile"


# instance fields
.field private mBufferedSource:Lcax;

.field final mProgressListeners:[Lvg;

.field final mResponseBody:Lbne;


# direct methods
.method public varargs constructor <init>(Lbne;[Lvg;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lbne;-><init>()V

    .line 25
    iput-object p1, p0, Luv;->mResponseBody:Lbne;

    .line 26
    iput-object p2, p0, Luv;->mProgressListeners:[Lvg;

    .line 27
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Luv;->mResponseBody:Lbne;

    invoke-virtual {v0}, Lbne;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Lcax;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Luv;->mBufferedSource:Lcax;

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Luv;->mResponseBody:Lbne;

    invoke-virtual {v0}, Lbne;->b()Lcax;

    move-result-object v0

    new-instance v1, Luv$1;

    invoke-direct {v1, p0, v0}, Luv$1;-><init>(Luv;Lcbk;)V

    invoke-static {v1}, Lcbe;->a(Lcbk;)Lcax;

    move-result-object v0

    iput-object v0, p0, Luv;->mBufferedSource:Lcax;

    .line 44
    :cond_0
    iget-object v0, p0, Luv;->mBufferedSource:Lcax;

    return-object v0
.end method

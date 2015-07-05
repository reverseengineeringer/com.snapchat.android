.class public final Lbsn;
.super Ljava/lang/Object;

# interfaces
.implements Lbsi;


# instance fields
.field private a:Lbtb;


# direct methods
.method public constructor <init>(Lbtb;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lbsn;->a:Lbtb;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(ZILorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 17
    if-nez p1, :cond_0

    .line 22
    iget-object v0, p0, Lbsn;->a:Lbtb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbtb;->a(Z)V

    .line 24
    :cond_0
    return-void
.end method

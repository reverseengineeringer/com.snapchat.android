.class public final Lcgt$a;
.super Lcja;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcgt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lcgt;

.field public b:Lcgh;


# direct methods
.method public constructor <init>(Lcgt;Lcgh;)V
    .locals 0

    .prologue
    .line 1270
    invoke-direct {p0}, Lcja;-><init>()V

    .line 1271
    iput-object p1, p0, Lcgt$a;->a:Lcgt;

    .line 1272
    iput-object p2, p0, Lcgt$a;->b:Lcgh;

    .line 1273
    return-void
.end method


# virtual methods
.method public final a()Lcgh;
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lcgt$a;->b:Lcgh;

    return-object v0
.end method

.method protected final b()J
    .locals 2

    .prologue
    .line 1308
    iget-object v0, p0, Lcgt$a;->a:Lcgt;

    iget-wide v0, v0, Lchg;->a:J

    return-wide v0
.end method

.method protected final c()Lcgf;
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lcgt$a;->a:Lcgt;

    iget-object v0, v0, Lchg;->b:Lcgf;

    return-object v0
.end method

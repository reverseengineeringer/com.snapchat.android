.class public Lbsk;
.super Ljava/lang/Object;

# interfaces
.implements Lbsi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsk$a;
    }
.end annotation


# instance fields
.field private a:Lbrk;

.field private b:Lbrk;


# direct methods
.method public constructor <init>(Lbrk;Lbrk;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lbsk;->a:Lbrk;

    .line 32
    iput-object p2, p0, Lbsk;->b:Lbrk;

    .line 33
    return-void
.end method


# virtual methods
.method public a(ZILorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 40
    if-nez p1, :cond_0

    const/16 v0, 0xc8

    if-lt p2, v0, :cond_1

    const/16 v0, 0x12c

    if-ge p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 41
    iget-object v0, p0, Lbsk;->a:Lbrk;

    invoke-virtual {v0}, Lbrk;->a()V

    .line 45
    :goto_1
    return-void

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lbsk;->a:Lbrk;

    iget-object v1, p0, Lbsk;->b:Lbrk;

    invoke-virtual {v0, v1}, Lbrk;->a(Lbrk;)V

    goto :goto_1
.end method

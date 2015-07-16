.class public final Lagw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lagw$a;
    }
.end annotation


# instance fields
.field public final a:Lagw$a;

.field private final b:Lpm;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lpm;->a()Lpm;

    move-result-object v0

    new-instance v1, Lagw$a;

    invoke-direct {v1}, Lagw$a;-><init>()V

    invoke-direct {p0, v0, v1}, Lagw;-><init>(Lpm;Lagw$a;)V

    .line 24
    return-void
.end method

.method private constructor <init>(Lpm;Lagw$a;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lagw;->b:Lpm;

    .line 34
    iput-object p2, p0, Lagw;->a:Lagw$a;

    .line 35
    return-void
.end method

.class public final Lafw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lafw$a;
    }
.end annotation


# instance fields
.field public final a:Lafw$a;

.field private final b:Lov;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    new-instance v1, Lafw$a;

    invoke-direct {v1}, Lafw$a;-><init>()V

    invoke-direct {p0, v0, v1}, Lafw;-><init>(Lov;Lafw$a;)V

    .line 24
    return-void
.end method

.method private constructor <init>(Lov;Lafw$a;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lafw;->b:Lov;

    .line 34
    iput-object p2, p0, Lafw;->a:Lafw$a;

    .line 35
    return-void
.end method

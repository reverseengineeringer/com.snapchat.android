.class public final Larc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Laqy;

.field public b:I

.field public final c:Larf;

.field public final d:Laph;

.field public final e:Lard;


# direct methods
.method public constructor <init>(ILaph;Larf;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Larc;->b:I

    .line 22
    iput-object p3, p0, Larc;->c:Larf;

    .line 23
    iput-object p2, p0, Larc;->d:Laph;

    .line 24
    sget-object v0, Lard;->a:Lard;

    if-nez v0, :cond_0

    new-instance v0, Lard;

    invoke-direct {v0}, Lard;-><init>()V

    sput-object v0, Lard;->a:Lard;

    :cond_0
    sget-object v0, Lard;->a:Lard;

    iput-object v0, p0, Larc;->e:Lard;

    .line 25
    new-instance v0, Lara;

    invoke-direct {v0}, Lara;-><init>()V

    iput-object v0, p0, Larc;->a:Laqy;

    .line 26
    return-void
.end method

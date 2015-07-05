.class public final Lcks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcks$a;
    }
.end annotation


# instance fields
.field private final a:Lcks$a;

.field private final b:Lcks$a;


# direct methods
.method public constructor <init>(Lcks$a;Lcks$a;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcks;->a:Lcks$a;

    .line 21
    iput-object p2, p0, Lcks;->b:Lcks$a;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcks;->a:Lcks$a;

    invoke-interface {v0}, Lcks$a;->a()F

    move-result v0

    return v0
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcks;->b:Lcks$a;

    invoke-interface {v0}, Lcks$a;->a()F

    move-result v0

    return v0
.end method

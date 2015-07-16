.class public final Lclt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclt$a;
    }
.end annotation


# instance fields
.field private final a:Lclt$a;

.field private final b:Lclt$a;


# direct methods
.method public constructor <init>(Lclt$a;Lclt$a;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lclt;->a:Lclt$a;

    .line 21
    iput-object p2, p0, Lclt;->b:Lclt$a;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lclt;->a:Lclt$a;

    invoke-interface {v0}, Lclt$a;->a()F

    move-result v0

    return v0
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lclt;->b:Lclt$a;

    invoke-interface {v0}, Lclt$a;->a()F

    move-result v0

    return v0
.end method

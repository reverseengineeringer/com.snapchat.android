.class final Lcgm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcfn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcgm$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:[Ljava/lang/Object;

.field d:Lcfl$a;


# direct methods
.method public constructor <init>(Lcfl$a;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcgm;->d:Lcfl$a;

    .line 87
    iput-object p2, p0, Lcgm;->a:Ljava/lang/Object;

    .line 88
    iput-object p3, p0, Lcgm;->b:Ljava/lang/Object;

    .line 89
    iput-object p4, p0, Lcgm;->c:[Ljava/lang/Object;

    .line 90
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcgm;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcgm;->d:Lcfl$a;

    invoke-interface {v0}, Lcfl$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

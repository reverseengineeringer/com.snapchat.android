.class public final Lamc$a;
.super Lbgw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field final synthetic a:Lamc;


# direct methods
.method public constructor <init>(Lamc;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lamc$a;->a:Lamc;

    invoke-direct {p0}, Lbgw;-><init>()V

    return-void
.end method

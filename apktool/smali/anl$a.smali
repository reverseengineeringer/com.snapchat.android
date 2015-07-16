.class public final Lanl$a;
.super Lblp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field final synthetic a:Lanl;


# direct methods
.method public constructor <init>(Lanl;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lanl$a;->a:Lanl;

    invoke-direct {p0}, Lblp;-><init>()V

    return-void
.end method

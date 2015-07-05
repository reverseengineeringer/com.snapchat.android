.class public final Lamo$a;
.super Lbko;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field final synthetic a:Lamo;


# direct methods
.method public constructor <init>(Lamo;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lamo$a;->a:Lamo;

    invoke-direct {p0}, Lbko;-><init>()V

    return-void
.end method

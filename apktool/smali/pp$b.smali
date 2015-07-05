.class public final Lpp$b;
.super Lbkg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field final synthetic this$0:Lpp;


# direct methods
.method public constructor <init>(Lpp;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lpp$b;->this$0:Lpp;

    invoke-direct {p0}, Lbkg;-><init>()V

    return-void
.end method

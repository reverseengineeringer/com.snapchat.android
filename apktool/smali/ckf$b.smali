.class final Lckf$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lckf$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lckf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lckf$e;

.field private final b:Lckf$e;


# direct methods
.method constructor <init>(Lckf$e;Lckf$e;)V
    .locals 0

    .prologue
    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    iput-object p1, p0, Lckf$b;->a:Lckf$e;

    .line 993
    iput-object p2, p0, Lckf$b;->b:Lckf$e;

    .line 994
    return-void
.end method

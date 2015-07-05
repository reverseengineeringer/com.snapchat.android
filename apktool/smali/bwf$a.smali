.class public final Lbwf$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lbwf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lbwf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbwf;-><init>(B)V

    sput-object v0, Lbwf$a;->a:Lbwf;

    return-void
.end method

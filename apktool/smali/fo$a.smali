.class public final Lfo$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field b:I

.field public c:Ljava/lang/Object;

.field public d:Lfo$a;


# direct methods
.method protected constructor <init>(IILjava/lang/Object;Lfo$a;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lfo$a;->a:I

    .line 83
    iput p2, p0, Lfo$a;->b:I

    .line 84
    iput-object p3, p0, Lfo$a;->c:Ljava/lang/Object;

    .line 85
    iput-object p4, p0, Lfo$a;->d:Lfo$a;

    .line 86
    return-void
.end method

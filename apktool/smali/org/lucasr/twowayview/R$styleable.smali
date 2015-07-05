.class public final Lorg/lucasr/twowayview/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lucasr/twowayview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final TwoWayView:[I

.field public static final TwoWayView_android_choiceMode:I = 0x3

.field public static final TwoWayView_android_drawSelectorOnTop:I = 0x2

.field public static final TwoWayView_android_listSelector:I = 0x1

.field public static final TwoWayView_android_orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/lucasr/twowayview/R$styleable;->TwoWayView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100c4
        0x10100fb
        0x10100fc
        0x101012b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

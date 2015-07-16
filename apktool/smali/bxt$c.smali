.class public final Lbxt$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final NumberPicker:[I

.field public static final NumberPicker_internalLayout:I = 0x8

.field public static final NumberPicker_internalMaxHeight:I = 0x5

.field public static final NumberPicker_internalMaxWidth:I = 0x7

.field public static final NumberPicker_internalMinHeight:I = 0x4

.field public static final NumberPicker_internalMinWidth:I = 0x6

.field public static final NumberPicker_selectionDivider:I = 0x1

.field public static final NumberPicker_selectionDividerHeight:I = 0x2

.field public static final NumberPicker_selectionDividersDistance:I = 0x3

.field public static final NumberPicker_solidColor:I = 0x0

.field public static final NumberPicker_virtualButtonPressedDrawable:I = 0x9

.field public static final SnapchatTimePicker:[I

.field public static final SnapchatTimePicker_SCinternalLayout:I = 0x8

.field public static final SnapchatTimePicker_SCinternalMaxHeight:I = 0x5

.field public static final SnapchatTimePicker_SCinternalMaxWidth:I = 0x7

.field public static final SnapchatTimePicker_SCinternalMinHeight:I = 0x4

.field public static final SnapchatTimePicker_SCinternalMinWidth:I = 0x6

.field public static final SnapchatTimePicker_SCselectionDivider:I = 0x1

.field public static final SnapchatTimePicker_SCselectionDividerHeight:I = 0x2

.field public static final SnapchatTimePicker_SCselectionDividersDistance:I = 0x3

.field public static final SnapchatTimePicker_SCsolidColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lbxt$c;->NumberPicker:[I

    .line 80
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lbxt$c;->SnapchatTimePicker:[I

    return-void

    .line 69
    nop

    :array_0
    .array-data 4
        0x7f010028
        0x7f010029
        0x7f01002a
        0x7f01002b
        0x7f01002c
        0x7f01002d
        0x7f01002e
        0x7f01002f
        0x7f010030
        0x7f010031
    .end array-data

    .line 80
    :array_1
    .array-data 4
        0x7f010044
        0x7f010045
        0x7f010046
        0x7f010047
        0x7f010048
        0x7f010049
        0x7f01004a
        0x7f01004b
        0x7f01004c
    .end array-data
.end method

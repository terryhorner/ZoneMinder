package ONVIF::PTZ::Types::ColorOptions;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %ColorList_of :ATTR(:get<ColorList>);
my %ColorspaceRange_of :ATTR(:get<ColorspaceRange>);

__PACKAGE__->_factory(
    [ qw(        ColorList
        ColorspaceRange

    ) ],
    {
        'ColorList' => \%ColorList_of,
        'ColorspaceRange' => \%ColorspaceRange_of,
    },
    {
        'ColorList' => 'ONVIF::PTZ::Types::Color',
        'ColorspaceRange' => 'ONVIF::PTZ::Types::ColorspaceRange',
    },
    {

        'ColorList' => 'ColorList',
        'ColorspaceRange' => 'ColorspaceRange',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::PTZ::Types::ColorOptions

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ColorOptions from the namespace http://www.onvif.org/ver10/schema.

http://www.onvif.org/ver10/colorspace/HSV - HSV colourspace 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * ColorList


=item * ColorspaceRange




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::PTZ::Types::ColorOptions
   # One of the following elements.
   # No occurance checks yet, so be sure to pass just one...
   ColorList => ,
   ColorspaceRange =>  { # ONVIF::PTZ::Types::ColorspaceRange
     X =>  { # ONVIF::PTZ::Types::FloatRange
       Min =>  $some_value, # float
       Max =>  $some_value, # float
     },
     Y =>  { # ONVIF::PTZ::Types::FloatRange
       Min =>  $some_value, # float
       Max =>  $some_value, # float
     },
     Z =>  { # ONVIF::PTZ::Types::FloatRange
       Min =>  $some_value, # float
       Max =>  $some_value, # float
     },
     Colorspace =>  $some_value, # anyURI
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
